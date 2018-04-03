<%@ Language="javascript" %>

<%
	var msgRef = Request.QueryString("refMsg");
	
	var query = "DELETE FROM Messages WHERE RefMessage = " + msgRef;
	Session("mycon").Execute(query, Session("mycon"));

    Response.Redirect("inbox.aspx");

%>

<html>
<head>

    
</head>
<body>
	
</body>
</html>
