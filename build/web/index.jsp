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
        <link rel="stylesheet" type="text/css" href="style.css" />
    </head>
    <body>
  
        <form name="salaryCalculator" action="results.jsp" method="post">
            <table align="center">
                <tbody>
                    <tr>
                        <td>
                             <h1>Simple Salary Calculator</h1>
                             <hr>
                        </td>
                    </tr>
                    <tr>
                        <td class="tag">Hours Worked:</td>
                        <td><input type="number" name="hours" value="" size="50" required ></td>
                    </tr>
                    <tr>
                        <td class="tag">Hourly Pay:</td>
                        <td><input type="number" name="payRate" value="" size="50" required ></td>
                    </tr>
                    <tr>
                        <td class="tag">Pre-tax Deduct:</td>
                        <td><input type="number" name="preTax" value="" size="50" required ></td>
                    </tr>
                    <tr>
                        <td class="tag">Post-tax Deduct:</td>
                        <td><input type="number" name="postTax" value="" size="50" required ></td>
                    </tr>
                    <tr>
                        <td><input type="reset" value="Clear" id="clear">
                        <input type="submit" value="Submit" id="submit">
                        </td>
                     </tr>
                </tbody>
            </table>
            
           
        </form>
    </body>
</html>
