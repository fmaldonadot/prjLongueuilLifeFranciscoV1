<%@ Language="javascript" %>

<%
    var toProfile = Request.QueryString("hiddRefProfile");
    
    // Get Nickname of receiver
    var query = "SELECT Nickname FROM Profiles WHERE RefProfile= " +toProfile;
    var myRec = new ActiveXObject("ADODB.Recordset");
    myRec.Open( query ,  Session("mycon") );

    var receiver = myRec.Fields['Nickname'].Value;
    var date = Date();
    myRec.Close();

    

%>

<!DOCTYPE html>

<html>
<head>

    <title>Compose</title>   
    
 
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 73%;
            height: 488px;
        }
        .auto-style6 {
            height: 25px;
        }
        .auto-style7 {
            height: 25px;
            width: 165px;
            text-align: right;
        }
        .auto-style8 {
            width: 120px;
            height: 274px;
        }
        .auto-style9 {
            height: 24px;
            width: 165px;
            text-align: right;
        }
        .auto-style10 {
            height: 24px;
        }
        .auto-style11 {
            height: 25px;
            width: 120px;
            text-align: center;
        }
        .auto-style12 {
            width: 99%;
        }
        .auto-style13 {
            width: 99%;
            height: 260px;
        }
    </style>
    
 
</head>
<body style="background-color:whitesmoke; ">    

    <h1 class="auto-style1">Send a message to <%= receiver %></h1>
    <hr />
<form action="sendMessage.aspx?toMess=<%= toProfile %>&dtime=<%= date %>" method="post">
    <table align="center" class="auto-style2" style="border: thin solid #000000">
        <tr>
            <td class="auto-style7" style="border: thin solid #FF9933; background-color: #0066CC; color: #FFFFFF; font-weight: bolder; font-size: 20px;">To:</td>
            <td class="auto-style6" style="border: thin solid #CCFFCC; background-color: #CCCCFF; font-size: 18px; color: #000000; font-weight: bold;">
                <%= receiver %></td>
        </tr>
        <tr>
            <td class="auto-style7" style="border: thin solid #FF9933; background-color: #0066CC; color: #FFFFFF; font-weight: bolder; font-size: 20px;">From:</td>
            <td class="auto-style6" style="border: thin solid #CCFFCC; background-color: #CCCCFF; font-size: 18px; color: #000000; font-weight: bold;">
                <%= Session("Nickname") %>

            </td>
        </tr>
        <tr>
            <td class="auto-style9" style="border: thin solid #FF9933; background-color: #0066CC; color: #FFFFFF; font-weight: bolder; font-size: 20px;">Date:</td>
            <td class="auto-style10" style="border: thin solid #CCFFCC; background-color: #CCCCFF; font-size: 18px; color: #000000; font-weight: bold;">
                <%= date %></td>
        </tr>
        <tr>
            <td class="auto-style7" style="border: thin solid #FF9933; background-color: #0066CC; color: #FFFFFF; font-weight: bolder; font-size: 20px;">Subject:</td>
            <td class="auto-style6" style="border: thin solid #CCFFCC; background-color: #CCCCFF; font-size: 20px; color: #000000; font-weight: bold;">
                <input name="txtSubject" class="auto-style12" type="text" style="font-size: 18px" required/></td>
        </tr>
        <tr>
            <td class="auto-style11" colspan="2" style="border: thin solid #FF9933; background-color: #0066CC; color: #FFFFFF; font-weight: bolder; font-size: 20px;">Message:</td>
            
        </tr>
        <tr>
            <td class="auto-style8" colspan="2" style="font-size: 22px; font-family: Dubai; font-style: normal; color: #000000; background-color: #FFFFF0; border: thin double #0066CC; vertical-align: top;">
                <textarea name="txtMessage" class="auto-style13" name="S1" style="font-size: 18px"></textarea></td>
            
        </tr>
        <tr>
            <td colspan="2" class="auto-style1">
                <input type="submit" value="Send" style="padding: 5px 10px 5px 10px; background-color: #3366CC; color: #FFFFFF; font-weight: bolder; font-size: 16px;" />
                <input type="reset" value="Clear" style="padding: 5px 10px 5px 10px; background-color: #3366CC; color: #FFFFFF; font-weight: bolder; font-size: 16px;" />
</form>   
            <a href="welcome.aspx" style="float:left; flofont-size: 18px" />Go Back
            </td>            
        </tr>
    </table>


</body>
</html>
