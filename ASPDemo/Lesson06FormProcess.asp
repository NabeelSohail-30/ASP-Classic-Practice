<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Lesson 06 - Form Process</title>
</head>

<body>
    <%
        dim Varempname
        dim Varempdob
        dim Varempnationality
        dim Varchkmatric
        dim Varchkinter
        dim Varchkbachlours
        dim Varchkmasters
        dim VarGender
        
        Varempname = Request.Form("empname")
        Varempdob = Request.form("empdob")
        Varempnationality = request.form("empnationality")
        Varchkmatric = request.form("chkmatric")
        Varchkinter = request.form("chkinter")
        Varchkbachlours = request.form("chkbachlours")
        Varchkmasters = request.form("chkmasters")
        VarGender = request.form("Gender")
    %>



    <h1>Employee Details</h1>

    <h3>Employee Name: <% response.write(Varempname) %> </h3>

    <h3>Employee Date of Birth: <% response.write(Varempdob) %></h3>

    <h3>Employee Nationality: <% response.write(Varempnationality) %></h3>

    <h3>Employee Qualifications: <% response.write(chkmatric & "," & chkbachlours & "," & chkinter & "," & chkmasters) %></h3>

    <h3>Employee Gender: <% response.write(VarGender) %></h3>

</body>

</html>
