<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Form 02 - Redirect Form with Server Side Validation</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <style>
        span {
            color: Red;
        }

        form {
            margin-left: 10px;
        }

    </style>
</head>

<body>
    <form action="Form02Validation.asp" method="post">
        <fieldset>
            <legend>New Transaction</legend>

            <div>
                <label for="">Transaction Date</label>
                <input type="date" name="TxtTransDate" value="<% response.write(Session("STransDate")) %>">
                <span>
                    <% response.write(Session("ErrorDate")) %>
                </span>
            </div>

            <div>
                <label for="">Category</label>
                <select name="TxtCatg">
                    <option value="-1">Select Category</option>
                    <% If Session("SCatg") = 1 Then %>
                    <option value="1" selected>Home Expense</option>
                    <% Else %>
                    <option value="1">Home Expense</option>
                    <% End If %>

                    <% If Session("SCatg") = 2 Then %>
                    <option value="2" selected>Maintainance</option>
                    <% Else %>
                    <option value="2">Maintainance</option>
                    <% End If %>

                    <% If Session("SCatg") = 3 Then %>
                    <option value="3" selected>Education</option>
                    <% Else %>
                    <option value="3">Education</option>
                    <% End If %>

                    <% If Session("SCatg") = 4 Then %>
                    <option value="4" selected>Medical</option>
                    <% Else %>
                    <option value="4">Medical</option>
                    <% End If %>
                </select>
                <span>
                    <% response.write(Session("ErrorCatg")) %>
                </span>
            </div>

            <div>
                <label for="">Person</label>
                <select name="TxtPerson">
                    <option value="-1">Select Person</option>
                    <% If Session("SPerson") = 1 Then %>
                    <option value="1" selected>Sohail</option>
                    <% Else %>
                    <option value="1">Sohail</option>
                    <% End If %>

                    <% If Session("SPerson") = 2 Then %>
                    <option value="2" selected>Nabeel</option>
                    <% Else %>
                    <option value="2">Nabeel</option>
                    <% End If %>

                    <% If Session("SPerson") = 3 Then %>
                    <option value="3" selected>Raheel</option>
                    <% Else %>
                    <option value="3">Raheel</option>
                    <% End If %>

                    <% If Session("SPerson") = 4 Then %>
                    <option value="4" selected>Karachi</option>
                    <% Else %>
                    <option value="4">Karachi</option>
                    <% End If %>
                </select>
                <span>
                    <% response.write(Session("ErrorPers")) %>
                </span>
            </div>

            <div>
                <label for="">Description</label>
                <br>
                <textarea name="TxtDesc" cols="50" rows="5" draggable="false"><% response.write(Session("SDesc")) %></textarea>
                <span>
                    <% response.write(Session("ErrorDesc")) %>
                </span>
            </div>

            <div>
                <label for="">Credit Amount</label>
                <input type="text" name="TxtCrAmount" value="<% response.write(Session("SCrAmount")) %>">
                <span>
                    <% response.write(Session("ErrorCr")) %>
                </span>
            </div>

            <div>
                <label for="">Debit Amount</label>
                <input type="text" name="TxtDbAmount" value="<% response.write(Session("SDbAmount")) %>">
                <span>
                    <% response.write(Session("ErrorDb")) %>
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
