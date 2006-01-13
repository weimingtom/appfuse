<%@ include file="/common/taglibs.jsp"%>

<title><fmt:message key="activeUsers.title"/></title>
<content tag="heading"><fmt:message key="activeUsers.heading"/></content>
<body id="activeUsers"/>

<fmt:message key="activeUsers.message"/>

<div class="separator"></div>

<button type="button" onclick="location.href='<html:rewrite forward="mainMenu" />'">
    <fmt:message key="button.cancel"/>
</button>
    
<display:table name="applicationScope.userNames" id="user" cellspacing="0" cellpadding="0"
    defaultsort="1" class="list activeUserList" pagesize="50" requestURI="">
  
    <display:column property="username" style="width: 30%" titleKey="userForm.username" sortable="true"/>
    <display:column titleKey="activeUsers.fullName" sortable="true">
        <c:out value="${user.firstName} ${user.lastName}"/>
        <c:if test="${not empty user.email}">
        <a href="mailto:<c:out value="${user.email}"/>">
            <html:img pageKey="icon.email.img"
                altKey="icon.email" styleClass="icon"/></a>
        </c:if>
    </display:column>
        
    <display:setProperty name="paging.banner.item_name" value="user" />
    <display:setProperty name="paging.banner.items_name" value="users" />
</display:table>