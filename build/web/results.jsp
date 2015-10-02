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
        <link rel="stylesheet" type="text/css" href="style.css" />
    </head>
    <%
        double hoursWorked = Integer.parseInt(request.getParameter("hours"));
        double payRate = Integer.parseInt(request.getParameter("payRate"));
        double preTaxDeduct = Integer.parseInt(request.getParameter("preTax"));
        double postTaxDeduct = Integer.parseInt(request.getParameter("postTax"));
        double regularHours = 40;
        double otHours = 0;
        double otPayRate = 0;
        double otPay = 0;
        double regularPay;
        double taxablePay;
        double grossPay;
        double taxAmount;
        double postTaxPay;
        double netPay;
        
            if(hoursWorked > 40)
                {
                    otPayRate = payRate * 1.5;
                    otHours = hoursWorked - 40;
                    regularHours = 40;
                    otPay = otHours * otPayRate;
                    regularPay = regularHours * payRate;
                    grossPay = regularPay + otPay;
                }
            else
                {
                    grossPay = hoursWorked * payRate;
                }
            
            taxablePay = grossPay - preTaxDeduct;
      
            if(grossPay < 500)
                {
                    taxAmount = taxablePay * .18;
                }
            else
                {
                    taxAmount = taxablePay * .22;
                }
            
            postTaxPay = taxablePay - taxAmount;
            netPay = postTaxPay - postTaxDeduct;
            
        %>
    
    
    <body>
        
        <table align="center">
            <tbody>
                <tr>
                    <td>
                        <h1>Salary Information</h1>
                    </td>
                </tr>
                <tr>
                    <td class="tag">Total Hours Worked:</td>
                    <td><%= hoursWorked %></td>
                </tr>
                <tr>
                    <td class="tag">Hourly Rate:</td>
                    <td class="money"><%= payRate %></td>
                </tr>
                <tr>
                    <td class="tag"># Hours Overtime:</td>
                    <td><%= otHours %></td>
                </tr>
                <tr>
                    <td class="tag">Overtime Hourly Rate:</td>
                    <td class="money"><%= otPayRate %></td>
                </tr>
                <tr>
                    <td class="tag">Gross Pay:</td>
                    <td class="money"><%= grossPay %></td>
                </tr>
                <tr>
                    <td class="tag">Pre-tax Deduct:</td>
                    <td class="money"><%= preTaxDeduct %></td>
                </tr>
                <tr>
                    <td class="tag">Pre-tax Pay:</td>
                    <td class="money"><%= taxablePay %></td>
                </tr>
                <tr>
                    <td class="tag">Tax Amount:</td>
                    <td class="money"><%= taxAmount %></td>
                </tr>
                <tr>
                    <td class="tag">Post-tax Pay:</td>
                    <td class="money"><%= postTaxPay %></td>
                </tr>
                <tr>
                    <td class="tag">Post-tax Deduct:</td>
                    <td class="money"><%= postTaxDeduct %></td>
                </tr>
                <tr>
                    <td class="tag">Net Pay:</td>
                    <td class="money"><%= netPay %></td>
                </tr>  
            </tbody>
        </table>
    </body>
</html>
