<%@ Language="javascript" %>
<% Session("show")=""; %>
<!DOCTYPE html>

<html>
<head>
    <title>Index</title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 425px;
        }
        .auto-style3 {
            width: 148px;
        }
        .auto-style4 {
            width: 180px;
        }
        .auto-style5 {
            width: 220px;
        }
        .auto-style6 {
            width: 185px;
        }
        .auto-style7 {
            width: 220px;
            text-align: left;
        }
    </style>
</head>
<body style="background-position: 80px 20px; background-image: url('http://localhost:52393/img/soulmateIcon.png'); background-repeat: no-repeat; background-color: #FFFFF4;">
<form action="validateLogin.aspx" method="get">   
    <p class="auto-style1" style="font-size: 60px; font-weight: bolder; font-family: 'Brush Script MT'">LongueuilLife</p>
<div style="float:right; margin-right:100px;">  
    <table class="auto-style2" align="center">
        <tr>
            <td class="auto-style5">
                <h2>Log in </h2>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">Email Address</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">
                <input name="txtEmail" class="auto-style4" type="text" /></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">Password:</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">
                <input name="txtPassword" class="auto-style4" type="password" /></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5"<span style="color:red"><%= Session("errorMessage") %></span></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">
                <input name="btnLogin" class="auto-style6" type="submit" value="Login" /></td>
            <td>&nbsp;</td>
        </tr>
</form>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">
                <hr />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">Not yet a member? 
                <a href ="signup01.aspx" />Sign Up</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    
</div> 
</body>
</html>
