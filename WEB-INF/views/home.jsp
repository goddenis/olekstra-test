
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!--<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>-->
<%@ taglib prefix="joda" uri="http://www.joda.org/joda/time/tags"%>

<s:message code="label_letter_list" var="labelLetterList"/>

<html>
<head>
    <title></title>
</head>
<body>
<h1>${labelLetterList}</h1>
<div>
    <table>

        <c:forEach var="letter" items="${letters}">
            <tr>
                <td>
                    <a href="${letter.id}">${letter.date}/></a>
                </td>
                <td>
                    ${letter.subject}
                </td>
            </tr>
        </c:forEach>


    </table>
</div>
<%--

<div>
    <h2>Create a new Letter </h2>
    <sf:form method="POST" modelAttribute="letter" action="home.jsp">
        <fieldset>
            <table cellspacing="0">
                <tr>
                    <th><label for="date">Date</label></th>
                    <td><sf:input path="date" size="15" id="date"/></td>
                </tr>
                <tr>
                    <th><label for="subject">Subject:</label></th>
                    <td><sf:input path="subject" size="15" maxlength="15"
                                  id="subject"/>
                        <small id="subject_msg">250 letters only</small>
                    </td>
                </tr>
                <tr>
                    <th><label for="number">Number:</label></th>
                    <td><sf:input path="number" size="20"
                                     showPassword="true"
                                     id="number"/>
                    </td>
                </tr>
                <tr>
                    <th><label for="notes">Notes:</label></th>
                    <td><sf:textarea path="notes" size="1000"
                                  id="notes"/>
                    </td>
                </tr>
                <tr>
                    <th></th>
                    <td>
                        <sf:checkbox path="posted"
                                     id="posted"/>
                        <label for="posted"> Posted </label>
                    </td>
                </tr>
            </table>
        </fieldset>
    </sf:form>
</div>
--%>

</body>
</html>



