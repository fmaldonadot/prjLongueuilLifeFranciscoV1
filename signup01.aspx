<%@ Language="javascript" %>

<!DOCTYPE html>

<html>
<head>

    <title>New Member</title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 56%;
        }
        .auto-style5 {
            width: 116px;
            text-align: left;
        }
        .auto-style6 {
            width: 116px;
            text-align: left;
            height: 23px;
        }
        .auto-style8 {
            text-align: left;
            width: 81px;
        }
        .auto-style10 {
            width: 88px;
        }
        .auto-style12 {
            width: 233px;
        }
        .auto-style13 {
            width: 116px;
            text-align: center;
        }
        .auto-style14 {
            text-align: left;
            width: 148px;
        }
        .auto-style15 {
            width: 58px;
        }
        .auto-style17 {
            width: 186px;
        }
        .auto-style18 {
            text-align: center;
            width: 81px;
        }
        .auto-style19 {
            width: 191px;
        }
    </style>
</head>
<body style="background-color: #FFFFF4;">
    
    <p class="auto-style1" style="font-size: 50px; font-weight: bolder; font-family: 'Brush Script MT'">Create Your Profile</p>
<form action="addMember.aspx" method="post">
    <table align="center" class="auto-style2">
        <tr>
            <td class="auto-style8">First Name:</td>
            <td class="auto-style14">Last Name:</td>
        </tr>
        <tr>
            <td class="auto-style8">
                <input name="txtFname" class="auto-style17" type="text" required/></td>
            <td class="auto-style14">
                <input name="txtLName" class="auto-style17" type="text" required/></td>
        </tr>
        <tr>
            <td class="auto-style8">Gender:</td>
            <td class="auto-style14">Looking for:</td>
        </tr>
        <tr>
            <td class="auto-style8">
                <select name="cmbGender" class="auto-style17" required="required" >
                      <option value ="Male" >Male</option>
                       <option value ="Female" >Female</option>
                </select></td>
            <td class="auto-style14">
                <select name="cmbLookingFor" class="auto-style17">
                    <option value ="Male" >Male</option>
                    <option value ="Female" >Female</option>
                </select></td>
        </tr>
        <tr>
            <td class="auto-style5" colspan="2">Birthday:</td>
        </tr>
        <tr>
            <td class="auto-style8" colspan="2">
                <select name="cmbMonth" class="auto-style10">
                    <option value="1">January</option>
                    <option value="2">February</option>
                    <option value="3">March</option>
                    <option value="4">April</option>
                    <option value="5">May</option>
                    <option value="6">June</option>
                    <option value="7">July</option>
                    <option value="8">August</option>
                    <option value="9">September</option>
                    <option value="10">October</option>
                    <option value="11">November</option>
                    <option value="12">December</option>
                </select>
                <select name="cmbDay" class="auto-style15">
                    <% for( var i = 1; i <=31; i++)
                        {
                            Response.Write("<option value='"+i+"'>"+i+"</option>");
                        }                        
                    %>
                </select>&nbsp;&nbsp;<select name="cmbYear" class="auto-style15">
                    <% for( var i = 2018; i >=1900; i--)
                        {
                            Response.Write("<option value='"+i+"'>"+i+"</option>");
                        }                        
                    %>
                </select></td>
        </tr>
        <tr>
            <td class="auto-style5">Email Address:</td>
            <td class="auto-style5">Nickname:</td>
        </tr>
        <tr>
            <td class="auto-style6">
                <input name="txtEmail" class="auto-style19" type="text" required/></td>
            <td class="auto-style6">
                <input name="txtNickname" class="auto-style19" type="text" required/></td>   
        </tr>
        <tr>
            <td class="auto-style5" colspan="2">Password:</td>
            </tr>
       <tr>
            <td class="auto-style5" colspan="2">
                <input name="txtPassword" type="password" required class="auto-style12"/></td>
        </tr>
        <tr>
            <td class="auto-style5" colspan="2">Confirm Password:</td>
        </tr>
        <tr>
            <td class="auto-style5" colspan="2">
                <input name="txtConfirmPwd" type="password" required class="auto-style12"/></td>
        </tr>
        <tr>
            <td class="auto-style18" colspan="2"><span style="color:red"><%= Session("errorMessage") %></span></td>
            
        </tr>
        <tr>
            <td class="auto-style13" colspan="2">
                <input name="btnJoin" type="submit" value="Join Now" style="padding: 10px 20px 10px 20px; background-color: #3366CC; color: #FFFFFF; font-weight: bolder; font-size: 16px" /></td>
        </tr>
    </table>
</form>  
</body>
</html>
