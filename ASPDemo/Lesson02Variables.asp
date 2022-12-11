<% Option Explicit %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Lesson02 - Variables</title>

    <style>
        .Detail {
            border: 2px solid Grey;
        }

        /*.heading {
            font-weight: bold;
        }*/

        .Detail span {
            font-weight: 100;
        }

        .Detail div {
            font-weight: 700;
        }

    </style>
</head>

<body>
    <h2>Variables in ASP</h2>
    <%
        Dim StdName
        Dim FatherName
        Dim DateOfBirth
        Dim Age
        Dim AdmFee
        
        StdName = "Nabeel Sohail"
        FatherName = "Sohail Habib"
        DateOfBirth = "30/11/2000"
        Age = 20
        AdmFee = 2500
    %>

    <h3>Student Detail</h3>
    <%
        response.write ("Student Name = " & StdName & "<br>")
        response.write ("Student Father Name = " & FatherName & "<br>")
        response.write ("Student Date Of Birth = " & DateOfBirth & "<br>")
        response.write ("Student's Age = " & Age & "<br>")
        response.write ("Student's Admission Fee = " & AdmFee)
    %>

    <div class="Detail">
        <h3>Student Detail</h3>
        <div class="heading">Student Name =
            <span><%
            response.write (StdName)  
            %></span>
        </div>

        <div class="heading">Student Father Name =
            <span><%
            response.write (FatherName)  
        %></span>
        </div>

        <div class="heading">Student Date of Birth =
            <span><%
            response.write (DateOfBirth)  
        %></span>
        </div>

        <div class="heading">Student Age =
            <span><%
            response.write (Age)  
        %></span>
        </div>

        <div class="heading">Student Admission Fee =
            <span><%
            response.write (AdmFee)  
        %></span>
        </div>
    </div>
</body>

</html>
