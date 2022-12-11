<%
        Dim StdName
        Dim FatherName
        Dim AdmDate
        Dim AdmFee
        
        StdName = request.form("TxtStdName")
        FatherName = request.form("TxtFatherName")
        AdmDate = request.form("TxtAdmDate")
        AdmFee = request.form("TxtAdmFee")
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>

<body>
    <%
      
      'min length val on father name
      'Max length val on std and father name
      'check numeric in std and father name
      'check numeric in adm fee
      'validate name - method isvalidname
      'only albhabet and space can be is name
      
       if StdName = "" then
            response.write("Student Name cannot be NULL")
            response.end
        elseif len(StdName) < 3 then
            response.write("Student Name must be of atleast 3 characters")
            response.end
        elseif len(StdName) > 15 then
            response.write("Max length for Student Name is 15")
            response.end
        elseif IsNumeric(StdName) = true then
            response.write("Student Name cannot contain any numeric value")
            response.end
       end if
       
       If isnull(FatherName) = True or FatherName = "" then
           response.write("Father Name Cannot be NULL")
           response.end
        elseif len(Fathername) < 3 then
            response.write("Father Name must be of at least 3 characters")
            response.end
        elseif len(FatherName) >15 then
            response.write("Max length for Father Name is 15")
            response.end
       end if
       
       if AdmDate = "" then
           response.write("Admission Date Cannot be NULL")
           response.end
        elseif cdate(AdmDate) > Date() then
            response.write("Admission Date Cannot be greater than current date")
            response.end
       end if
       
       if AdmFee = "" then
           response.write("Admission Fee Cannot be NULL")
           response.end
        elseif IsNumeric(AdmFee) = False then
            response.write("Admission Fee cannot contain any albhabet or symbol")
            response.end
        elseif cint(AdmFee) < 5000 or cint(AdmFee) > 10000 then
            response.write("Admission Fee can only be between 5000 and 10000")
            response.end
       end if
   %>
    <h2>Submitted Student Admission Detail</h2>

    <div>
        <h3>Student Name:</h3>
        <% response.write(StdName) %>
    </div>

    <div>
        <h3>Father Name:</h3>
        <% response.write(FatherName) %>
    </div>

    <div>
        <h3>Admission Date:</h3>
        <% response.write(AdmDate) %>
    </div>

    <div>
        <h3>Admission Fee:</h3>
        <% response.write(AdmFee) %>
    </div>
</body>

</html>
