<%@ Language="javascript" %>
<%
    Session("errorMessage") = "";
    var lemail = Request.QueryString("txtEmail");
    var lpwd = Request.QueryString("txtPassword");    

    //Connecting to DB
    Session("mycon") = new ActiveXObject("ADODB.Connection");
    Session("mycon").Open("Provider=Microsoft.ACE.OLEDB.12.0;Data Source='C:\\Users\\fmtchicho\\Documents\\Visual Studio 2015\\WebSites\\prjLongueuilLifeFranciscoV1\\App_Data\\LongueuilLifeDB.accdb'");
    
    var query = "SELECT RefProfile FROM Profiles WHERE email = '" +lemail+ "' AND Password = '" +lpwd+ "'";

    var myRec = new ActiveXObject("ADODB.Recordset");
    myRec.Open( query ,  Session("mycon") );

    // Validate email and password
    if( !myRec.EOF )
    {
        Session("refProfile") = myRec.Fields['RefProfile'].Value;
        // Get the Nickname
        myRec.Close();
        query = "SELECT Nickname FROM Profiles WHERE RefProfile= " +Session("refProfile");
        myRec = new ActiveXObject("ADODB.Recordset");
        myRec.Open( query ,  Session("mycon") );
        
        Session("nickname") = myRec.Fields['Nickname'].Value;
        Response.Redirect("welcome.aspx");    
    }
    else
    {
        Session("errorMessage") = "Email or Password are incorrect <br />";
        myRec.Close();
        Session("mycon").Close();
        Response.Redirect("index.aspx");
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
    </style>
   
</head>
<body>
    
    
</body>
</html>
