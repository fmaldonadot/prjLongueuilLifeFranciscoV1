<%@ Language="javascript" %>

<%
     var favoriteProfile = Request.QueryString("refProfile");
    
    //Proceed to add Favorite
    var query = "INSERT INTO Favorites (RefProfileUser, RefProfileMyFavorite) ";
    query += "VALUES (" +Session("refProfile")+ " , " +favoriteProfile+ " )";                    
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
