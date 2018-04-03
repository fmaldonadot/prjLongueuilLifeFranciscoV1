<%@ Language="javascript" %>

<%
	var msgRef = Request.QueryString("refMsg");
	var fromNname = Request.QueryString("nkName");

	var myRec = new ActiveXObject("ADODB.Recordset");
	var query = "SELECT MessageDate, Subject, Message FROM Messages WHERE RefMessage = " + msgRef;
	myRec.Open( query ,  Session("mycon") );
    	

%>

<html>
<head>

    <title></title>
    <link rel="stylesheet" type="text/css" href="./css/indexOmnivox.css" />
    <style type="text/css">
        .auto-style3 {
            width: 106px;
            background-color:antiquewhite;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            width: 106px;
        }
    </style>
</head>
<body style="background-color:whitesmoke; ">

    <h1 class="auto-style4">Read Message</h1>
    <hr />

    <table style="width:1100px; margin-left:150px">
        <tr>
            <td class="auto-style3"><strong>From:</strong></td>
            <td style="background-color: #A8FFEE"><%= fromNname %></td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>To:</strong></td>
            <td style="background-color: #A8FFEE"><%= Session("Nickname") %></td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>Date:</strong></td>
            <td style="background-color: #A8FFEE"><%= myRec.Fields["MessageDate"].Value %></td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>Subject</strong></td>
            <td style="background-color: #A8FFEE"><%= myRec.Fields["Subject"].Value %></td>
        </tr>
        <tr>
            <td colspan="2" style="border: 4px double #66CCFF; background-color: #EFEFEF; height:370px; vertical-align: top;"><%= myRec.Fields["Message"].Value %></td>
            
        </tr>
        <tr>
            <td colspan"2" class="auto-style5"><a href="inbox.aspx" style="font-family: cursive; font-size: 18px">Back Inbox</a></td>
        </tr>
    </table>
	<% myRec.Close();
         %>
</body>
</html>
