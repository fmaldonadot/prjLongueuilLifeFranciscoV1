<%@ Language="javascript" %>

<%
    var refReceiver = Request.QueryString("toMess");
    var dTime = Request.QueryString("dtime");
    var subject = Request.Form("txtSubject");
    var message = Request.Form("txtMessage");

    //Proceed to Insert the Message in Table
    var query = "INSERT INTO Messages (RefProfileFrom, RefProfileTo, Subject, Message, Unread) ";
    query += "VALUES (" +Session("refProfile")+ " , " +refReceiver+ " , '" +subject+ "' , '" +message+ "' , true )";                    
    Session("mycon").Execute( query , Session("mycon") );
    Response.Redirect("welcome.aspx");
    
%>



<!DOCTYPE html>

<html>
<head>

    <title></title>
    
</head>
<body>
    
    
</body>
</html>
