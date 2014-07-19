polymer-sample
==============

A sample Jahia module that uses Polymer elements. Polymer is a state-of-the-art project from Google to implement 
web components. You can learn more about it here : http://www.polymer-project.org

This module is not production ready code (neither is Polymer btw :)) but rather a starting point on how to integrate 
Jahia and Polymer, and show that it is technically quite straight-forward

Requirements
------------

- Jahia 7.1.0.0 or more recent (as we need support for HTML imports)
- A browser supported by Polymer, see http://www.polymer-project.org/resources/compatibility.html for more details. We
usually recommended using Chrome as a test browser

This project embeds version 0.3.3 of Polymer and the used componennts so it doesn't have any external dependencies 
on Polymer.

How to use
----------

1. Deploy the module to Jahia, and then activate it on a site
2. Create a new page
3. On the page, drag and drop a jnt:polymerCoreHeaderPanel component onto the page
4. Inside the jnt:polymerCoreHeaderPanel, drop a jnt:polymerCoreToolbar component
5. Inside the jnt:polymerCoreToolbar, drop a jnt:polymerPaperTabs component
6. Inside the jnt:polymerPaperTabs, create TWO jnt:polymerPaperTab components and give them proper title and system names

You should normally see a result that looks like the first step of the polymer tutorial, available here : 
http://www.polymer-project.org/docs/start/tutorial/step-1.html

You should be able to click on the tabs and see the corresponding animations, and see the browser Javascript logs for
the corresponding events.

Backporting HTML imports to Jahia 7.0 or 6.6
--------------------------------------------

If you need to use HTML imports with older versions of Jahia, you can simply modify the following script : 
WEB-INF/scripts/resources.groovy to add a switch case that looks like this (put it just before the "default" case") : 

      case "html" :
          type.value.eachWithIndex { html, i ->
            condition = html.value.get("condition");
            if (condition != null) println("<!--["+condition+"]>");
            rel = html.value.get("rel");
            println "<link id=\"staticAssetHTML${i}\" rel=\"${rel!=null?rel:"import"}\" href=\"${html.key}\" />";
            if (condition != null) println("<![endif]-->");
          }
          break;

This will then make it possible to use the addResources tag as in the example below:

    <template:addResources type="html" resources="components/core-header-panel/core-header-panel.html" />

which will generate the corresponding HTML import : 

    <link id="staticAssetHTML0" rel="import" href="/modules/polymer-sample/html/components/core-header-panel/core-header-panel.html">
    
This modification will be included in all new versions of Jahia so modifying the script will not be necessary from 
version 7.1.0.0 and more recent.