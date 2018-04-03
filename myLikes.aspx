<%@ Language="javascript" %>

<%    
    //Find Favorites
    var query = "SELECT * FROM Likes WHERE RefProfile = " +Session("refProfile");
    var myRec = new ActiveXObject("ADODB.Recordset");
    myRec.Open( query ,  Session("mycon") );  
    var count = 0;
    var colLikes = []; 
    var i=0;
    while(!myRec.EOF)
    {
        colLikes.push(myRec.Fields['RefProfileYouLike'].Value);
        i++;        
        myRec.MoveNext();        
    }
    count=i+1;
    myRec.Close();
%>

<!DOCTYPE html>

<html>
<head>

    <title>My Likes</title>   
    <style type="text/css">
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
        .auto-style9 {
            float: left;
            width: 174px;
        }
        .auto-style10 {
            text-align: center;
        }
    </style>

</head>
<body style="background-color:whitesmoke;" >   
    
    <p style="text-align:center; font-size: 50px; font-weight: bolder; font-family: 'Brush Script MT'; font-style: normal">My Likes</p>
    
    <hr />
    <div class="auto-style10">
    <a href="welcome.aspx" style="font-family: cursive; font-size: 22px">Back</a>
    </div>
    <div style="background-color:floralwhite; width:1330px; height: 400px" class="auto-style10">
    <% 
    for(var j in colLikes)
    {
        query = "SELECT FirstName, LastName, Country, City, (YEAR(NOW()) - YEAR(Birthday)) AS Age FROM Profiles WHERE RefProfile= " +colLikes[j];
        myRec = new ActiveXObject("ADODB.Recordset");
        myRec.Open( query ,  Session("mycon") );  
        %>
    <div class="auto-style9">
        <table class="auto-style4" style="border: medium double #FF9933">
            <tr>
                <td class="auto-style5">
                    <img src="img/yourLikes.png" alt="Photo" class="auto-style6" style="border-bottom-style: solid; border-bottom-width: medium; border-bottom-color: #FF9933" /></td>
            </tr>
            <tr>
                <td><%= myRec.Fields['FirstName'].Value %> <%= myRec.Fields['LastName'].Value %><br /><%= myRec.Fields['Age'].Value %> years</td>
            </tr>
            <tr>
                <td><%= myRec.Fields['Country'].Value %>, <%= myRec.Fields['City'].Value %></td>
            </tr>
           
        </table>
    
    </div>
    <%  myRec.Close(); 
     }  %>
   
   </div> 
        
</body>
</html>
