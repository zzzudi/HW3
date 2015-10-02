<%-- 
    Document   : results
    Created on : 2015-10-2, 0:55:38
    Author     : zudi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Results</title>
        <link rel="stylesheet" href="stylesheet.css" type="text/css" />
    </head>
    <%  
        
        
    double totalHour = Double.parseDouble(request.getParameter("hours"));
    double hourlyPay= Double.parseDouble(request.getParameter("hrpay"));
    double otRate = hourlyPay * 1.5;
    double preDeduct= Double.parseDouble(request.getParameter("prededuct"));
    double postDeduct= Double.parseDouble(request.getParameter("postdeduct"));
   
    double regHours;
    double otHours;
    double otPay;
    double regPay;
    double grossPay;
    
    double taxAmount;
    
    
    
            
    if (totalHour>40){
        regHours=40;
        otHours = totalHour-40;
        otPay = otHours * otRate;
        regPay=regHours * hourlyPay;
        grossPay=regPay+otPay;               
    }
    else{
        otHours=0;
        grossPay = totalHour * hourlyPay;}
    
    double taxablePay = grossPay - preDeduct;
    
    if (grossPay <500) {
        taxAmount=taxablePay * 0.18;
    }
    else {
        taxAmount = taxablePay * 0.22;
    }
    
    double postPay=taxablePay-taxAmount;
    double netPay=postPay-postDeduct;           
            
    %>
    <body>
        <h1>Salary Info</h1>
        <table border="1">
                <tbody>
                    <tr>
                         
                     </tr>
                    <tr>
                        <td> Total Hours worked:</td>
                        <td><%= totalHour %></td>
                     </tr>
                     <tr>
                         
                     </tr>
                     <tr>
                        <td> Hourly Rate:</td>
                        <td><%= hourlyPay %></td>
                     </tr> 
                     <tr>
                         
                     </tr>
                     <tr>
                        <td> # Hours Overtime:</td>
                        <td><%= otHours %></td>
                     </tr>
                     <tr>
                         
                     </tr>
                     <tr>
                        <td> Overtime Hourly Rate:</td>
                        <td><%= otRate %></td>
                     </tr>
                     <tr>
                         
                     </tr>
                     <tr>
                        <td> Gross Pay:</td>
                        <td><%= grossPay %></td>
                     </tr>
                     <tr>
                         
                     </tr>
                     <tr>
                        <td> Pre-tax Deduct:</td>
                        <td><%= preDeduct %></td>
                     </tr>
                     <tr>
                         
                     </tr>
                     <tr>
                        <td> Pre-tax Pay:</td>
                        <td><%= taxablePay %></td>
                     </tr>
                     <tr>
                         
                     </tr>
                     <tr>
                        <td> Tax Amount:</td>
                        <td><%= taxAmount %></td>
                     </tr>
                     <tr>
                         
                     </tr>
                     <tr>
                        <td> Post-tax Pay:</td>
                        <td><%= postPay %></td>
                     </tr>
                     <tr>
                         
                     </tr>
                     <tr>
                        <td> Post-tax Deduct:</td>
                        <td><%= postDeduct %></td>
                     </tr>
                     <tr>
                         
                     </tr>
                     <tr>
                        <td> Net Pay:</td>
                        <td><%= netPay %></td>
                     </tr>
                     <tr>
                         
                     </tr>
                </tbody>
            </table>
        
        
    </body>
</html>
