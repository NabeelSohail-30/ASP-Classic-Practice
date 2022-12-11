<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Form 01 - Redirect Form with Server Side Validation</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <style>
        .error {
            color: Red;
        }

        form {
            margin-left: 10px;
        }

    </style>
</head>

<body>
    <form action="Form01Validation.asp" method="post">
        <fieldset>
            <legend>Student Admission Detail</legend>

            <div>
                <label for="">Student Name</label>
                <input type="text" name="TxtStdName" value="<% response.write(request.querystring("Name")) %>">
                <span class="error">
                    <% response.write(request.querystring("ErrorMsg1")) %>
                </span>
            </div>

            <div>
                <label for="">Father Name</label>
                <input type="text" name="TxtFName" value="<% response.write(request.querystring("FName")) %>">
                <span class="error">
                    <% response.write(request.querystring("ErrorMsg2")) %>
                </span>
            </div>

            <div>
                <label for="">Date of Birth</label>
                <input type="date" name="StdDob" value="<% response.write(request.querystring("Date")) %>">
                <span class="error">
                    <% response.write(request.querystring("ErrorMsg3")) %>
                </span>
            </div>

            <div>
                <label for="">Admission Fee</label>
                <input type="text" name="TxtAdmFee" value="<% response.write(request.querystring("Fee")) %>">
                <span class="error">
                    <% response.write(request.querystring("ErrorMsg4")) %>
                </span>
            </div>

            <div>
                <input type="Submit" value="Save">
                <input type="reset" value="Reset Form">
            </div>

        </fieldset>
    </form>
</body>

</html>
