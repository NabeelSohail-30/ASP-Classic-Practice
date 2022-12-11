<%
        Dim StdName
        Dim FatherName
        Dim Dob
        Dim AdmFee
        Dim FormValue
        
        StdName = request.form("TxtStdName")
        FatherName = request.form("TxtFName")
        Dob = request.form("StdDob")
        AdmFee = request.form("TxtAdmFee")
        
        FormValue ="&Name=" & StdName & "&FName=" & FatherName & "&Date=" & Dob & "&Fee=" & AdmFee
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="css/bootstrap.css">

    <style>
        * {
            box-sizing: border-box;
            margin: 0px;
            padding: 0px;
        }

        span {
            font-weight: 400;
        }

        .detail {
            border: 1px solid black;
            text-align: center;
            padding: 10px;
            margin: 20px;
        }

    </style>
</head>

<body>
    <%
    
    if StdName = "" then
        response.redirect "Form01.asp?ErrorMsg1=Student Name cannot be left NULL"&FormValue
    elseif len(StdName) < 3 then 
        response.redirect "Form01.asp?ErrorMsg1=Student Name must be of at least 3 characters"&FormValue
    elseif len(StdName) > 15 then
        response.redirect "Form01.asp?ErrorMsg1=Max length of Student Name must be 15 characters"&FormValue
    end if
   
    If isnull(FatherName) = True or FatherName = "" then
        response.redirect "Form01.asp?ErrorMsg2=Father Name cannot be left NULL"&FormValue
    elseif len(Fathername) < 3 then
        response.redirect "Form01.asp?ErrorMsg2=Father Name must be of at least 3 characters"&FormValue
    elseif len(FatherName) >15 then
        response.redirect "Form01.asp?ErrorMsg2=Max length of Father Name must be 15 characters"&FormValue
    end if
       
    if Dob = "" then
       response.redirect "Form01.asp?ErrorMsg3=Date of Birth cannot be left NULL"&FormValue
    elseif cdate(Dob) >= Date() then
        response.redirect "Form01.asp?ErrorMsg3=Date of Birth cannot be greater than or equal to current date"&FormValue
    end if
       
    if AdmFee = "" then
       response.redirect "Form01.asp?ErrorMsg4=Student Admission Fee cannot be left NULL"&FormValue
    elseif IsNumeric(AdmFee) = False then
        response.redirect "Form01.asp?ErrorMsg4=Student Admission Fee cannot contain any non numeric value"&FormValue
    elseif cint(AdmFee) < 5000 or cint(AdmFee) > 10000 then
        response.redirect "Form01.asp?ErrorMsg4=Student Admission Fee cannot be less than 5000 or greater than 10000"&FormValue
    end if
   
%>


    <div class="detail">
        <h2>Student Admission Detail</h2>

        <div>
            <h4>
                Student Name:
                <span>
                    <% response.write(StdName) %>
                </span>
            </h4>
        </div>

        <div>
            <h4>
                Father Name:
                <span>
                    <% response.write(FatherName)%>
                </span>
            </h4>
        </div>

        <div>
            <h4>
                Student Date of Birth:
                <span>
                    <% response.write(Dob) %>
                </span>
            </h4>
        </div>

        <div>
            <h4>
                Admission Fee:
                <span>
                    <% response.write(AdmFee) %>
                </span>
            </h4>
        </div>
    </div>
</body>

</html>
