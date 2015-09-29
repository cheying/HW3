<%-- 
    Document   : results
    Created on : Sep 29, 2015, 5:58:53 PM
    Author     : Christine Heying
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Information</title>
    </head>
    <%
        int hoursWorked = Integer.parseInt(request.getParameter("hours"));
        int payRate = Integer.parseInt(request.getParameter("payRate"));
        int preTaxDeduct = Integer.parseInt(request.getParameter("preTax"));
        int postTaxDeduct = Integer.parseInt(request.getParameter("postTax"));
        int hours = Integer.parseInt(request.getParameter("hours"));
        int hours = Integer.parseInt(request.getParameter("hours"));
        int hours = Integer.parseInt(request.getParameter("hours"));
        int hours = Integer.parseInt(request.getParameter("hours"));
        int hours = Integer.parseInt(request.getParameter("hours"));
        %>
    
    
    <body>
        <h1>Salary Information</h1>
        
        <table border="1">
            <tbody>
                <tr>
                    <td>Total Hours Worked:</td>
                    <td><%= hoursWorked %></td>
                </tr>
                <tr>
                    <td>Hourly Rate:</td>
                    <td><%= payRate %></td>
                </tr>
                <tr>
                    <td># Hours Overtime:</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Overtime Hourly Rate:</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Gross Pay:</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Pre-tax Deduct:</td>
                    <td><%= preTaxDeduct %></td>
                </tr>
                <tr>
                    <td>Pre-tax Pay:</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Tax Amount:</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Post-tax Pay:</td>
                    <td><%= postTaxDeduct %></td>
                </tr>
                <tr>
                    <td>Post-tax Deduct:</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Net Pay:</td>
                    <td></td>
                </tr>  
            </tbody>
        </table>
    </body>
</html>
