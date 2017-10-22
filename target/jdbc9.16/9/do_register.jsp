<%--
  Created by IntelliJ IDEA.
  User: fansen
  Date: 2017/9/17
  Time: 22:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String userName = request.getParameter("userName");
    String skills = "";
    String[] skillArr = request.getParameterValues("skills");
    if (skillArr != null && skillArr.length > 0) {
        for (String skill : skillArr) {
            skills = skills + skill + " ";
        }
    }
    request.setAttribute("userNamess", userName);
    request.setAttribute("skillsss", skills);
%>
<jsp:forward page="welcome.jsp"></jsp:forward>