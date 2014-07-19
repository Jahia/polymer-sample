polymer-sample
==============

A sample Jahia module that uses Polymer elements. Polymer is a state-of-the-art project from Google to implement 
web components. You can learn more about it here : http://www.polymer-project.org

Requirements
------------

- Jahia 7.0 or more recent
- A browser supported by Polymer, see http://www.polymer-project.org/resources/compatibility.html for more details. We
usually recommended using Chrome as a test browser

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



