<%@ Language="javascript" %>

<%
    // Get all Messages for this session
    var query = "SELECT Messages.RefMessage, Messages.MessageDate, Messages.Subject, Messages.Message, Messages.Unread, Profiles.Nickname ";
        query += "FROM (Messages INNER JOIN Profiles ON Messages.RefProfileFrom = Profiles.RefProfile) ";
        query += "WHERE (Messages.RefProfileTo = " +Session("RefProfile")+ ")";

    var myRec = new ActiveXObject("ADODB.Recordset");
    myRec.Open( query ,  Session("mycon") );    

    function showMessages( record )
    {       
        var status = "<span style='color:grey'>Yes</span>"; 
        var boldOpen = "";
        var boldClose = "";
        var str = "";
        var unread = 0;
        while(!record.EOF)
        {
            if( record.Fields["Unread"].Value == true ) 
            {
                boldOpen = "<b>";
                boldClose = "</b>";
                unread++;
            }
            str = "<tr><td class='auto-style18' >" + boldOpen + record.Fields["Subject"].Value + boldClose + "</td>";
            str += "<td class='auto-style10' >" + boldOpen + record.Fields["Nickname"].Value + boldClose + "</td>";
            str += "<td class='auto-style10' >" + boldOpen + record.Fields["MessageDate"].Value + boldClose + "</td>";
            str += "<td class='auto-style10' ><a href = 'read.aspx?refMsg=" + record.Fields["RefMessage"].Value + "&nkName=" +record.Fields["Nickname"].Value+ "'/><img src='img/readIcon.png' class='auto-style3' title='Read Message' /></a>";
            str += "<a href = 'delete.aspx?refMsg=" + record.Fields["RefMessage"].Value + "'/><img src='img/deleteIcon.png' class='auto-style3' title='Delete Message' /></a></td></tr>";
            boldOpen = "";
            boldClose = "";
            
            Response.Write(str);
            record.MoveNext(); 
        }
        return unread;
    }  
    
%>

<!DOCTYPE html>

<html>
<head>

    <title>Inbox</title>   
 
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }    
        .auto-style3 {
            width: 25px;
            height: auto;
            margin-left:20px;
        }
        .auto-style9 {
            width: 1050px;
        }
        .auto-style14 {
            width: 20px;
            height: 27px;
        }
        .auto-style15 {
            text-align: center;
        }
        .auto-style16 {
            width: 681px;
            text-align: center;
            height: 27px;
        }
                
        .auto-style17 {
            width: 1050px;
            height: 500px;
        }
        
                
        .auto-style23 {
            width: 52px;
            text-align: center;
            height: 27px;
        }
        .auto-style29 {
            width: 48px;
        }
        .auto-style30 {
            width: 48px;
            text-align: center;
            height: 27px;
        }
        .auto-style31 {
            width: 74px;
            text-align: center;
            height: 27px;
        }
        
                
    </style>
</head>
<body style="background-color:whitesmoke; ">         
<h1 class="auto-style1">Inbox <%= Session("Nickname") %></h1>
<div style="background-color: lightgrey; margin-left:150px" class="auto-style17">
    <table align="center" class="auto-style9" style="border-color: #0066FF; border-style: solid; background-color: antiquewhite;">
        <tr>
            <td class="auto-style16" style="border-bottom-style: solid; border-color: #3399FF; background-color: #00ffcc;" colspan="4">
                <span style="font-size:22px; font-weight:bolder">MESSAGES</span> 
            </td>
        </tr>
        <tr>
            <td class="auto-style30" style="border-bottom-style: solid; border-color: #3399FF; background-color: #a8ffee;">
                <span style="font-size:18px; font-weight:bolder">Subject</span>
            </td>
            <td class="auto-style23" style="border-bottom-style: solid; border-color: #3399FF; background-color: #a8ffee;">
                <span style="font-size:18px; font-weight:bolder">From</span>
            </td>
            <td class="auto-style31" style="border-bottom-style: solid; border-color: #3399FF; background-color: #a8ffee;">
                <span style="font-size:18px; font-weight:bolder">Date</span>
            </td>
            <td class="auto-style14" style="border-bottom-style: solid; border-color: #3399FF; background-color: #a8ffee;">
                <span style="font-size:18px; font-weight:bolder">Actions</span>
            </td>
        </tr>
        <% var count = showMessages( myRec ); 
           myRec.Close();
        %>
        <tr>
            <td style="font-size: 18px; font-weight: bolder; color: #008080" class="auto-style29"><%= count %> Unread Messages<br />
                <a href="welcome.aspx" style="font-family: cursive; font-size: 18px">Go to WelCome Page</a></td>
            
        </tr>
    </table>
</div>  
