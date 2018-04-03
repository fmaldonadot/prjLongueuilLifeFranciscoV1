<%@ Language="javascript" %>

<%
    Session("show") = "";
    var rProfile = Request.QueryString("refProfile");

    // Get all Information about the Profile Selected
    var myRec = new ActiveXObject("ADODB.Recordset");
    var query = "SELECT * , (YEAR(NOW()) - YEAR(Birthday)) AS Age FROM Profiles WHERE RefProfile = " +rProfile;
    myRec.Open( query ,  Session("mycon") );

    // Create the way as the data will be shown
    var showObject="";    

    showObject = "<table class='auto-style2'>";
    showObject+= "<tr>";
    showObject+= "<td rowspan='13' colspan='3' class='auto-style1'><img src='img/yourFavorites.png' alt='Photo' class='auto-style14'/></td>";                
    showObject+= "</tr>";
    showObject+= "<tr>";
    showObject+= "<td>Name:</td>";  
    showObject+= "</tr>";
    showObject+= "<tr>";
    showObject+= "<td class='showProfileStyle'>" +myRec.Fields['FirstName'].Value+ " " +myRec.Fields['LastName'].Value+ "</td>";                
    showObject+= "</tr>";
    showObject+= "<tr>";
    showObject+= "<td>Age:</td>";                
    showObject+= "</tr>";
    showObject+= "<tr>";
    showObject+= "<td class='showProfileStyle'>" +myRec.Fields['Age'].Value+ "</td>";                
    showObject+= "</tr>";
    showObject+= "<tr>";
    showObject+= "<td>Nickname:</td>";                
    showObject+= "</tr>";
    showObject+= "<tr>";
    showObject+= "<td class='showProfileStyle'>" +myRec.Fields['Nickname'].Value+ "</td>";                
    showObject+= "</tr>";
    showObject+= "<tr>";
    showObject+= "<td class='auto-style10'>Location:</td>";                
    showObject+= "</tr>";
    showObject+= "<tr>";
    showObject+= "<td class='showProfileStyle'>" +myRec.Fields['City'].Value+ ", " +myRec.Fields['Country'].Value+  "</td>";                
    showObject+= "</tr>";
    showObject+= "<tr>";
    showObject+= "<td class='auto-style12'>Height:</td>";                        
    showObject+= "</tr>";
    showObject+= "<tr>";
    showObject+= "<td class='auto-style12, showProfileStyle'>" +myRec.Fields['Height'].Value+ " mts </td>";                              
    showObject+= "</tr>";
    showObject+= "<tr>";
    showObject+= "<td class='auto-style12'>Education:</td>";                                
    showObject+= "</tr>";
    showObject+= "<tr>";
    showObject+= "<td class='auto-style12, showProfileStyle'>" +myRec.Fields['EducationLevel'].Value+ "</td>";                
    showObject+= "</tr>";
    showObject+= "<tr>";
    showObject+= "<td class='auto-style21'>Personality:</td>";
    showObject+= "<td class='auto-style19'>Interested in:</td>";
    showObject+= "<td class='auto-style23'>Seeking:</td>";
    showObject+= "<td class='auto-style10'>Marital Status:</td>";
    showObject+= "</tr>";
    showObject+= "<tr>";
    showObject+= "<td class='auto-style22, showProfileStyle'>" +myRec.Fields['Personality'].Value+ "</td>";
    showObject+= "<td class='auto-style20, showProfileStyle'>" +myRec.Fields['InterestedIn'].Value+ "</td>";
    showObject+= "<td class='auto-style24, showProfileStyle'>" +myRec.Fields['Seeking'].Value+ "</td>";
    showObject+= "<td class='showProfileStyle'>" +myRec.Fields['Status'].Value+ "</td>";
    showObject+= "</tr>";
    showObject+= "<tr>";
    showObject+= "<td class='auto-style21'>Body Type:</td>";
    showObject+= "<td class='auto-style19'>Etnicity:</td>";
    showObject+= "<td class='auto-style23'>Religion:</td>";
    showObject+= "<td class='auto-style10'>Annual Income:</td>";
    showObject+= "</tr>";
    showObject+= "<tr>";
    showObject+= "<td class='auto-style22, showProfileStyle'>" +myRec.Fields['BodyType'].Value+ "</td>";
    showObject+= "<td class='auto-style20, showProfileStyle'>" +myRec.Fields['Etnicity'].Value+ "</td>";
    showObject+= "<td class='auto-style24, showProfileStyle'>" +myRec.Fields['Religion'].Value+ "</td>";
    showObject+= "<td class='showProfileStyle'>" +myRec.Fields['AnnualIncome'].Value+ " $</td>";
    showObject+= "</tr>";
    showObject+= "<tr>";
    showObject+= "<td class='auto-style22'>Smoking:</td>";
    showObject+= "<td class='auto-style20'>Drinking</td>";
    showObject+= "<td class='auto-style24'>Have Childrens:</td>";
    showObject+= "<td>Want Childrens:</td>";
    showObject+= "</tr>";
    showObject+= "<tr>";
    showObject+= "<td class='auto-style22, showProfileStyle'>" +myRec.Fields['Smoking'].Value+ "</td>";
    showObject+= "<td class='auto-style20, showProfileStyle'>" +myRec.Fields['Drinking'].Value+ "</td>";
    showObject+= "<td class='auto-style24, showProfileStyle'>" +myRec.Fields['HaveChildrens'].Value+ "</td>";
    showObject+= "<td class='showProfileStyle'>" +myRec.Fields['WantChildrens'].Value+ "</td>";
    showObject+= "</tr>";
    showObject+= "<tr>";
    showObject+= "<td class='auto-style25' colspan='4'>";
    showObject+= "<h1 class='auto-style26'>About Me</h1>";
    showObject+= "</td>";            
    showObject+= "</tr>";  
    showObject+= "<tr>";
    showObject+= "<tr>";
    showObject+= "<td class='auto-style25' colspan='4'>";
    showObject+= "<h2 class='auto-style26' style='color:darkblue'>" +myRec.Fields['AboutMe'].Value+ "</h2>";
    showObject+= "</td>";            
    showObject+= "</tr>";                   
    showObject+= "</table>";

    Session("show") = showObject;
    myRec.Close();
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
