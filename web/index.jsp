<%-- 
    Document   : index
    Created on : 2015-10-1, 23:34:42
    Author     : zudi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tax Calculator</title>
        <link rel="stylesheet" href="stylesheet.css" type="text/css" />
    </head>
    
    
    
    <body>
        
        
        <form name="demoForm" action="results.jsp" method="post">
            <table font-color="white">
                <tbody>
                    <h1>Simple Salary Calculator</h1>
                    <tr>
                         
                     </tr>
                    <tr>
                        <td> Hours Worked:</td>
                        <td><input type="text" name="hours" value="" size="50>"</td>
                     </tr>
                     
                     <tr>
                         
                     </tr>
                     
                     <tr>
                         <td> Hourly Pay:</td>
                        <td><input type="text" name="hrpay" value="" size="50>"</td>
                     </tr>  
                     <tr>
                         
                     </tr>
                     <tr>
                         <td> Pre-tax Deduct:</td>
                        <td><input type="text" name="prededuct" value="" size="50>"</td>
                     </tr> 
                     <tr>
                         
                     </tr>
                     <tr>
                         <td> Post-tax Deduct:</td>
                        <td><input type="text" name="postdeduct" value="" size="50>"</td>
                     </tr>
                     <tr>
                         
                     </tr>
                </tbody>
            </table>
            <div><input type="reset" value="Clear" id="clear">
            <input type="submit" value="Submit" id="submit">
            </div>
            
            
        </form>
    </body>
</html>
