﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bundlingMinification.aspx.cs" Inherits="jQueryPlugins.bundlingMinification" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <% #if DEBUG %>
        <script src="/js/jquery-1.10.2.js"></script>
        <script src="/js/jquery.maxlength.js"></script>
        <script src="/js/jquery.ipicture.js"></script>
    <% #else %>
<%--        <script src="/myBundledScripts"></script>--%>

   <%-- This allows you to bundle your scripts together and predetermine the order of the load at runtime. This will put the plugins in 
    a single request for faster browser performance. This will also give you control of how long to store these in client cache or quickly 
    know when to re-pull the cache based on a hash check.--%>
    <script src="<%= Microsoft.Web.Optimization.BundleTable.Bundles.ResolveBundleUrl("~/myBundledScripts") %>"></script> 
    <% #endif %>    
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Bundling
    </div>
    </form>
</body>
</html>
