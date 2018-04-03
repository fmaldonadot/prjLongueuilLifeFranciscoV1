<%@ Language="javascript" %>

<%
    // Get default search Criteria from user Profile (Gender, Seeking)
    var query = "SELECT Gender, Seeking FROM Profiles WHERE RefProfile= " +Session("refProfile");

    var myRec = new ActiveXObject("ADODB.Recordset");
    myRec.Open( query ,  Session("mycon") );
    
    var sGender = myRec.Fields['Gender'].Value;
    var sSeeking = myRec.Fields['Seeking'].Value;
    
    // Get all Profiles to Match with that Criteria
    myRec.Close();
    myRec = new ActiveXObject("ADODB.Recordset");
    query = "SELECT RefProfile, FirstName, LastName, Country, City, Photo, (YEAR(NOW()) - YEAR(Birthday)) AS Age  FROM Profiles WHERE Gender = '" +sSeeking+ "' AND Seeking = '" +sGender+ "'";
    myRec.Open( query ,  Session("mycon") );

    // Validate Search
    if( myRec.EOF )
    {            
        Session("errorMessage") = "There is no records that match With your preferences <br />";
    }

%>

<!DOCTYPE html>

<html>
<head>

    <title>Welcome</title>   
    
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 42px;
            height: 39px;
        }
        .auto-style4 {
            width: 150px;
            
        }
        .auto-style5 {
            height: 116px;
            text-align: center;
        }
        .auto-style6 {
            width: 142px;
            height: 137px;
        }
        .auto-style7 {
            height: 24px;
        }
        .auto-style9 {
            float: left;
            width: 174px;
        }
        .auto-style10 {
            height: 23px;
        }
        .auto-style12 {
            width: 129px;
        }
        .auto-style14 {
            width: 318px;
            height: 320px;
        }
        .auto-style19 {
            width: 125px;
            height: 23px;
        }
        .auto-style20 {
            width: 125px;
        }
        .auto-style21 {
            height: 23px;
            width: 68px;
        }
        .auto-style22 {
            width: 68px;
        }
        .auto-style23 {
            height: 23px;
            width: 111px;
        }
        .auto-style24 {
            width: 111px;
        }
        .auto-style25 {
            width: 68px;
            text-align: center;
        }
        .auto-style26 {
            width: 488px;
        }
        .showProfileStyle{
            color:teal;
            font-style:italic;
            font-size:18px;
            font-weight:bold;
        }
        .logoheader{
            width:80px;
            height:auto;
        }
    </style>
   
</head>
<body style="background-color:whitesmoke; ">    
<div>    
            <table class="auto-style2">
            <tr>
                <td><img src="img/soulmateIcon.png" class="logoheader" title="Messages" /></td>
                <td style="font-size: 50px; font-weight: bolder; font-family: 'Brush Script MT'; font-style: normal">Welcome To LongueuilLife</td>
                <td class="auto-style1" style="font-size: 50px; font-weight: bolder; font-family:cursive; font-style: normal"><%= Session("nickname") %></td>
                <td class="auto-style1">
                    <a href="myLikes.aspx" ><img src="img/yourLikes.png" class="auto-style3" title="Likes" />

                    <a href="inbox.aspx" ><img src="img/yourMessages.png" class="auto-style3" title="Messages" /></a>

                    <a href="myFavorites.aspx" ><img src="img/yourFavorites.png" class="auto-style3" title="Favorites" /><br />
                    <a href="Index.aspx" style="font-family: cursive; font-size: 18px">Logout</a>
                </td>
            </tr>
        </table>
    </h1>
    <hr />
    <h3 class="auto-style1">Advanced Search</h3>
    
    <hr />
    <span style="color:red"><%= Session("errorMessage") %></span>
</div>
<div>
  <div style="background-color:floralwhite; width:800px; height: 600px">
    <% while(!myRec.EOF) 
    {%>
    <div class="auto-style9">
        <table class="auto-style4" style="border: medium double #FF9933">
            <tr>
                <td class="auto-style5">
                    <a href="viewProfile.aspx?refProfile=<%= myRec.Fields['RefProfile'].Value %>" /><img src="img/yourLikes.png" alt="Photo" class="auto-style6" style="border-bottom-style: solid; border-bottom-width: medium; border-bottom-color: #FF9933" /></td>
            </tr>
            <tr>
                <td><%= myRec.Fields['FirstName'].Value %> <%= myRec.Fields['LastName'].Value %><br /><%= myRec.Fields['Age'].Value %> years</td>
            </tr>
            <tr>
                <td><%= myRec.Fields['Country'].Value %>, <%= myRec.Fields['City'].Value %></td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <a href="addLikes.aspx?refProfile=<%= myRec.Fields['RefProfile'].Value %>" ><image src="img/yourLikes.png" class="auto-style3" title="Likes" /></a>
                    <a href="addFavorite.aspx?refProfile=<%= myRec.Fields['RefProfile'].Value %>" ><image src="img/yourFavorites.png" class="auto-style3" title="Likes" /></a>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
<form action="composeMessage.aspx" method="get">
                    <input type="hidden" name="hiddRefProfile" value="<%= myRec.Fields['RefProfile'].Value %>" />
                    <input type="submit" value="Send a Message" name="btnComposeMsg" style="background-color: #FF9966" />
</form>
                </td>
            </tr>
        </table>

    </div>
    <%  myRec.MoveNext(); 
     }  %>
   </div>
    <div style="float:right; width:500px; height:600px; position: absolute; top: 170px; right:20px">
        <%= Session("show") %>
    </div>

</div>
</body>
</html>
