<%@ page language="java" contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="jcr" uri="http://www.jahia.org/tags/jcr" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="functions" uri="http://www.jahia.org/tags/functions" %>
<%@ taglib prefix="template" uri="http://www.jahia.org/tags/templateLib" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%--@elvariable id="currentNode" type="org.jahia.services.content.JCRNodeWrapper"--%>
<%--@elvariable id="out" type="java.io.PrintWriter"--%>
<%--@elvariable id="script" type="org.jahia.services.render.scripting.Script"--%>
<%--@elvariable id="scriptInfo" type="java.lang.String"--%>
<%--@elvariable id="workspace" type="java.lang.String"--%>
<%--@elvariable id="renderContext" type="org.jahia.services.render.RenderContext"--%>
<%--@elvariable id="currentResource" type="org.jahia.services.render.Resource"--%>
<%--@elvariable id="url" type="org.jahia.services.render.URLGenerator"--%>

<template:addResources type="javascript" resources="/modules/polymer-sample/html/components/platform/platform.js" />
<template:addResources type="html" resources="components/font-roboto/font-roboto.html" />
<template:addResources type="html" resources="components/paper-tabs/paper-tabs.html" />

<paper-tabs id="tabs" valueattr="name" selected="all" self-end>
    <c:forEach items="${currentNode.nodes}" var="subchild">
        <template:module node="${subchild}"/>
    </c:forEach>
</paper-tabs>

<script>
    var tabs = document.querySelector('paper-tabs');
    tabs.addEventListener('core-select', function(e) {
      console.log("tab change: " + e.target.getAttribute('name') +" selected = " + e.detail.isSelected);
      console.log("Selected: " + tabs.selected);
    });
  </script>

<template:module path="*"/>