<%@ Language="javascript" %>

<!DOCTYPE html>

<html>
<head>

    <title>Your Profile</title>
    
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 600px;
        }
        .auto-style3 {
            width: 229px;
        }
        .auto-style7 {
            width: 258px;
        }
        .auto-style8 {
            width: 229px;
            text-align: left;
        }
        .auto-style13 {
            width: 40px;
        }
        .auto-style14 {
            width: 120px;
        }
        .auto-style19 {
            width: 590px;
        }
        .auto-style20 {
            width: 229px;
            text-align: center;
        }
        .auto-style22 {
            width: 116px;
            text-align: left;
            height: 23px;
        }
        .auto-style23 {
            width: 116px;
            height: 23px;
        }
        .auto-style24 {
            width: 116px;
        }
        .auto-style26 {
            width: 173px;
            text-align: left;
        }
        .auto-style28 {
            width: 173px;
            text-align: left;
            height: 23px;
        }
        .auto-style33 {
            width: 226px;
        }
        .auto-style34 {
            width: 226px;
            height: 23px;
        }
        .auto-style35 {
            width: 111px;
        }
        .auto-style36 {
            width: 170px;
        }
        .auto-style37 {
            width: 170px;
            height: 23px;
        }
        .auto-style38 {
            width: 173px;
        }
        .auto-style39 {
            width: 173px;
            height: 23px;
        }
        .auto-style40 {
            width: 229px;
            height: 23px;
        }
    </style>
    
</head>
<body style="background-color: #FFFFF4;">  
    
    <h1 class="auto-style1" style="font-size: 50px; font-weight: bolder; font-family: 'Brush Script MT'">Complete Your Profile</h1>

<form action="completeProfile.aspx" method="post">
    <table align="center" class="auto-style2">
        <tr>
            <td class="auto-style38">Country:</td>
            <td class="auto-style24">City:</td>
            <td class="auto-style36">Personality:</td>
            <td class="auto-style33">Interested in:</td>
        </tr>
        <tr>
            <td class="auto-style38">
                <input name="txtCountry" type="text" required/></td>
            <td class="auto-style24">
                <input name="txtCity" type="text" required/></td>
            <td class="auto-style36">
                <select name="cmbPersonality" class="auto-style14">
                    <option value="Ask Later">Ask Later</option>
                    <option value="Creative">Creative</option>
                    <option value="Optimist">Optimist</option>
                    <option value="Pessimist">Pessimist</option>
                    <option value="Shy">Shy</option>
                    <option value="Ambitious">Ambitious</option>
                    <option value="Funny">Funny</option>
                </select></td>
            <td class="auto-style33">
                <select name="cmbInterested" class="auto-style14">
                    <option value="Ask Later">Ask Later</option>
                    <option value="Something Casual">Something Casual</option>
                    <option value="Have Friends">Have Friends</option>
                    <option value="Relationship">Relationship</option>
                    <option value="Hookups">Hookups</option>
                    <option value="LongTerm">LongTerm</option>
                    
                </select></td>
        </tr>
        <tr>
            <td class="auto-style38">Postal/Zip Code:</td>
            <td class="auto-style24">Education:</td>
            <td class="auto-style36">Have Childrems?</td>
            <td class="auto-style33">Want Childrems?</td>
        </tr>
        <tr>
            <td class="auto-style38">
                <input name="txtZipCode" type="text" required/></td>
            <td class="auto-style24">
                <select name="cmbEducation" class="auto-style14">
                    <option value="Ask Later">Ask Later</option>
                    <option value="High School">High School</option>
                    <option value="College">College</option>
                    <option value="University">University</option>
                    <option value="Post Graduate">Post Graduate</option>
                </select></td>
            <td class="auto-style36">
                <select name="cmbHaveChilds" class="auto-style14">
                    <option value="false">No</option>
                    <option value="true">Yes</option>
                </select></td>
            <td class="auto-style33">
                <select name="cmbWantChilds" class="auto-style14">
                    <option value="false">No</option>
                    <option value="true">Yes</option>
                </select></td>
        </tr>
        <tr>
            <td class="auto-style26">Height:</td>
            <td class="auto-style24">Body Type:</td>
            <td class="auto-style36">Annual Incomme:</td>
            <td class="auto-style33">Marital Status:</td>
        </tr>
        <tr>
            <td class="auto-style28">
                <select name="cmbMts" class="auto-style13">
                    <option value="0">0</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                </select> mts&nbsp;&nbsp;
                <select name="cmbCms" class="auto-style13">
                    <% for( var i = 0; i <=100; i++)
                        {
                            Response.Write("<option value='"+i+"'>"+i+"</option>");
                        }                        
                    %>
                </select> cm</td>
            <td class="auto-style22">
                <select name="cmbBody" class="auto-style14">
                    <option value="Ask Later">Ask Later</option>
                    <option value="Athletic">Athletic</option>
                    <option value="Average">Average</option>
                    <option value="Curvy">Curvy</option>
                    <option value="Plus Size">Plus Size</option>
                    <option value="Slim">Slim</option>
                </select></td>
            <td class="auto-style37">
                <input name="txtIncome" type="text" class="auto-style35" value="0"/> $</td>
            <td class="auto-style34">
                <select name="cmbMarital" class="auto-style14">
                    <option value="Ask Later">Ask Later</option>
                    <option value="Single">Single</option>
                    <option value="Married">Married</option>
                    <option value="Divorced">Divorced</option>
                    <option value="Widowed">Widowed</option>
                </select></td>
        </tr>
        <tr>
            <td class="auto-style39">Etnicity:</td>
            <td class="auto-style23">Religion:</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style34"></td>
        </tr>
        <tr>
            <td class="auto-style38">
                <select name="cmbEtnicity" class="auto-style14">
                    <option value="Ask Later">Ask Later</option>
                    <option value="Latino">Latino</option>
                    <option value="Black">Black</option>
                    <option value="Caucasian">Caucasian</option>
                    <option value="Mixed">Mixed</option>
                    <option value="Asian">Asian</option>
                    <option value="European">European</option>
                    <option value="Other">Other</option>
                </select></td>
            <td class="auto-style24">
                <select name="cmbReligion" class="auto-style14">
                    <option value="Ask Later">Ask Later</option>
                    <option value="Catholic">Catholic</option>
                    <option value="Budhist">Budhist</option>
                    <option value="Christian">Christian</option>
                    <option value="Hindu">Hindu</option>
                    <option value="Jewish">Jewish</option>
                    <option value="Atheist">Atheist</option>
                </select></td>
            <td class="auto-style7" colspan="2">
                <input type="file" name="txtFileName" title="Choice a Picture" style="padding: 10px 20px 10px 20px; background-color: #3366CC; color: #FFFFFF; font-weight: bolder; font-size: 16px" /></td>
            
        </tr>
        <tr>
            <td class="auto-style38">Smoking:</td>
            <td class="auto-style24">Drinking:</td>
            <td class="auto-style36">&nbsp;</td>
            <td class="auto-style33">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style38">
                <select name="cmbSmoking" class="auto-style14">
                    <option value="Ask Later">Ask Later</option>
                    <option value="Never">Never</option>
                    <option value="Ocasionally">Ocasionally</option>
                    <option value="Always">Always</option>
                </select></td>
            <td class="auto-style24">
                <select name="cmbDrinking" class="auto-style14">
                    <option value="Ask Later">Ask Later</option>
                    <option value="Never">Never</option>
                    <option value="Ocasionally">Ocasionally</option>
                    <option value="Always">Always</option>
                </select></td>
            <td class="auto-style36">&nbsp;</td>
            <td class="auto-style33">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8" colspan="4">About Me:</td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="4">
                <textarea name="txtAboutMe" class="auto-style19" name="S2" rows="2"></textarea></td>
            
        </tr>
        <tr>
            <td class="auto-style40" colspan="4"><span style="color:red"><%= Session("errorMessage") %></span></td>
            
        </tr>
        <tr>
            <td class="auto-style20" colspan="4">
                <input name="btnComplete" type="submit" value="Complete your Profile" style="padding: 10px 20px 10px 20px; background-color: #3366CC; color: #FFFFFF; font-weight: bolder; font-size: 16px" /></td>
            
        </tr>
    </table>
 </form>   
    
</body>
</html>
