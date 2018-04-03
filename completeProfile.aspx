<%@ Language="javascript" %>

<%
    Session("errorMessage") = "";
    Session("country") = Request.Form("txtCountry");
    Session("city") = Request.Form("txtCity");
    Session("personality") = Request.Form("cmbPersonality");
    Session("interested") = Request.Form("cmbInterested");
    Session("marital") = Request.Form("cmbMarital");
    Session("postalCode") = Request.Form("txtZipCode");
    Session("education") = Request.Form("cmbEducation");
    Session("haveChilds") = Request.Form("cmbHaveChilds");
    Session("wantChilds") = Request.Form("cmbWantChilds");
    Session("mts") = Request.Form("cmbMts");
    Session("cms") = Request.Form("cmbCms");
    Session("bodyType") = Request.Form("cmbBody");
    Session("income") = Request.Form("txtIncome");
    Session("etnicity") = Request.Form("cmbEtnicity");
    Session("religion") = Request.Form("cmbReligion");
    Session("smoking") = Request.Form("cmbSmoking");
    Session("drinking") = Request.Form("cmbDrinking");
    Session("aboutMe") = Request.Form("txtAboutMe");
    Session("photo") = Request.Form("txtFileName");

    // Get the RefProfile Created
    var query = "SELECT RefProfile FROM Profiles where email = '" +Session("email")+ "'";            
    var myRec = new ActiveXObject("ADODB.Recordset");            
    myRec.Open(query , Session("mycon"));

    Session("refProfile") = myRec.Fields['RefProfile'].Value;
    myRec.Close();

    // Verify that Income is a number
    if ( /^[0-9]+$/.test(Session("income")) )
    {
        //////////////////////////////////
        //Proceed to Complete all Profile 
        ///////////////////////////////////

        var query = "UPDATE Profiles SET "
        query += "Personality = '" +Session("personality")+ "', ";
        query += "Country = '" +Session("country")+ "', ";
        query += "City = '" +Session("city")+ "', ";
        query += "InterestedIn = '" +Session("interested")+ "', ";
        query += "Status = '" +Session("marital")+ "', ";
        query += "Height = " +Session("mts")+"."+Session("cms")+ ", ";
        query += "BodyType = '" +Session("bodyType")+ "', ";
        query += "Etnicity = '" +Session("etnicity")+ "', ";
        query += "Religion = '" +Session("religion")+ "', ";
        query += "Smoking = '" +Session("smoking")+ "', ";
        query += "Drinking = '" +Session("drinking")+ "', ";
        query += "HaveChildrens = " +Session("haveChilds")+ ", ";
        query += "WantChildrens = " +Session("wantChilds")+ ", ";
        query += "EducationLevel = '" +Session("education")+ "', ";
        query += "AnnualIncome = " +Session("income")+ ", ";
        query += "AboutMe = '" +Session("aboutMe")+ "', ";
        query += "Photo = '" +Session("photo")+ "' ";
        query += "WHERE Nickname = '" +Session("nickname")+ "' ";
        

        Session("mycon").Execute( query , Session("mycon") );
        Response.Redirect("welcome.aspx");
    }
    else
    {
        Session("errorMessage") = "Must be fill Annual Income only with numbers <br />";
        Response.Redirect("signup02.aspx");
    }
    
%>


<!DOCTYPE html>

<html>
<head>

    <title</title>   
   
</head>
<body>
 
    
</body>
</html>
