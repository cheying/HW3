<%-- 
    Document   : index
    Created on : Sep 29, 2015, 5:09:13 PM
    Author     : Christine Heying
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Calculator</title>
    </head>
    <body>
        <h1>Simple Salary Calculator</h1>
        
        <form name="salaryCalculator" action="results.jsp" method="post">
            <table>
                <tbody>
                    <tr>
                        <td>Hours Worked:</td>
                        <td><input type="number" name="hours" value="" size="50" required ></td>
                    </tr>
                    <tr>
                        <td>Hourly Pay:</td>
                        <td><input type="number" name="payRate" value="" size="50" required ></td>
                    </tr>
                    <tr>
                        <td>Pre-tax Deduct:</td>
                        <td><input type="number" name="preTax" value="" size="50" required ></td>
                    </tr>
                    <tr>
                        <td>Post-tax Deduct:</td>
                        <td><input type="number" name="postTax" value="" size="50" required ></td>
                    </tr>
                </tbody>
            </table>
            
            <input type="reset" value="Clear" id="clear">
            <input type="submit" value="Submit" id="submit">
            
        </form>
    </body>
</html>
