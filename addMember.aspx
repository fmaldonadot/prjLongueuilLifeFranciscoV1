<%@ Language="javascript" %>

<%
    Session("errorMessage") = "";
    Session("fname") = Request.Form("txtFname");
    Session("lname") = Request.Form("txtLName");
    Session("gender") = Request.Form("cmbGender");
    Session("seeking") = Request.Form("cmbLookingFor");
    Session("month") = Request.Form("cmbMonth");
    Session("day") = Request.Form("cmbDay");
    Session("year") = Request.Form("cmbYear");
    Session("email") = Request.Form("txtEmail");
    Session("nickname") = Request.Form("txtNickname");
    var pwd = Request.Form("txtPassword");
    var cpwd = Request.Form("txtConfirmPwd"); 
        
    
    // Validate email has the format aaaaaaa@bbbbbbb@ccc
    if ( /^[a-zA-Z0-9]+[@]+[a-zA-Z0-9]+[.]+[a-zA-Z0-9]{3}$/.test(Session("email")) )
    {
        // Validate if Passwords Match
        if( pwd == cpwd )
        {
            //Connecting to DB
            Session("mycon") = new ActiveXObject("ADODB.Connection");
            Session("mycon").Open("Provider=Microsoft.ACE.OLEDB.12.0;Data Source='C:\\Users\\fmtchicho\\Documents\\Visual Studio 2015\\WebSites\\prjLongueuilLifeFranciscoV1\\App_Data\\LongueuilLifeDB.accdb'");

            var query = "SELECT email FROM Profiles where email = '" +Session("email")+ "'";            
            var myRec = new ActiveXObject("ADODB.Recordset");
            
            myRec.Open(query , Session("mycon"));

            if (myRec.EOF)
            {   
                myRec.Close();
                myRec = new ActiveXObject("ADODB.Recordset");

                // Verify Nickname unique
                query = "SELECT Nickname FROM Profiles where Nickname = '" +Session("nickname")+ "'";            
                myRec.Open(query , Session("mycon"));
                
                if (myRec.EOF)
                {
                    //////////////////////////////////
                    //Proceed to create a new Profile 
                    ///////////////////////////////////
                    query = "INSERT INTO Profiles (FirstName, LastName, Nickname, email, Gender, Seeking, Birthday, [Password]) ";
                    query += "VALUES ('" +Session("fname")+ "' , '" +Session("lname")+ "' , '" +Session("nickname")+ "' , '" +Session("email")+ "' , '" +Session("gender")+ "' , '" +Session("seeking")+ "' , '" +Session("day")+"-"+Session("month")+"-"+Session("year")+ "' , '" +pwd+ "')";                    
                    Session("mycon").Execute( query , Session("mycon") );
                    Response.Redirect("signup02.aspx");
                }
                else
                {
                     Session("errorMessage") = "Nickname already exist, try another one <br />";
                     Response.Redirect("signup01.aspx");
                }
                
            }
            else
            {
                myRec.Close();
                Session("errorMessage") = "Email address already exist, try another one <br />";
                Response.Redirect("signup01.aspx");
            }
        }
        else
        {
            Session("errorMessage") = "Passwords doesn't match <br />";
            Response.Redirect("signup01.aspx");
        }
    }
    else
    {
        Session("errorMessage") = "Invalid email address <br />";
        Response.Redirect("signup01.aspx");
    }


    
%>



<!DOCTYPE html>

<html>
<head>

    <title></title>
    
</head>
<body>
    
    
</body>
</html>
