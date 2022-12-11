<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <style>
        .Error {
            color: red;
        }

    </style>
</head>

<body>
    <form action="Lesson09FormValidationBackToForm.asp" method="post">
        <fieldset>
            <legend>Admission Detail</legend>
            <div>
                <label for="">Student Name:</label>
                <input type="text" name="TxtStdName">
                <div class="Error"><% response.write(request.querystring("ErrorMsg")) %></div>
            </div>
            <br>
            <div>
                <label for="">Father Name:</label>
                <input type="text" name="TxtFatherName">
            </div>
            <br>
            <div>
                <label for="">Admission Date:</label>
                <input type="date" name="TxtAdmDate">
            </div>
            <br>
            <div>
                <label for="">Student Admission Fee:</label>
                <input type="text" name="TxtAdmFee">
            </div>
            <br>
            <div>
                <input type="Submit" value="Save">
                <input type="reset" value="Reset Form">
            </div>
        </fieldset>
    </form>
</body>

</html>
