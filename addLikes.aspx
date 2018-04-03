<%@ Language="javascript" %>

<%
     var likedProfile = Request.QueryString("refProfile");
    
    //Proceed to add Favorite
    var query = "INSERT INTO Likes (RefProfile, RefProfileYouLike) ";
    query += "VALUES (" +Session("refProfile")+ " , " +likedProfile+ " )";                    
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
