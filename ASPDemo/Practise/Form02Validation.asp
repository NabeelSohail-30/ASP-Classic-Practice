<%
        Dim TransDate
        Dim Desc
        Dim CrAmount
        Dim DbAmount
        Dim Catg
        Dim Person
        
        TransDate = request.form("TxtTransDate")
        Desc = request.form("TxtDesc")
        CrAmount = request.form("TxtCrAmount")
        DbAmount = request.form("TxtDbAmount")
        Catg = request.form("TxtCatg")
        Person = request.form("TxtPerson")
        
        Session("STransDate")=TransDate
        Session("SDesc")=Desc
        Session("SCrAmount")=CrAmount
        Session("SDbAmount")=DbAmount
        Session("SCatg")=Catg
        Session("SPerson")=Person
        
        Session("ErrorDate")=""
        Session("ErrorDesc")=""
        Session("ErrorCr")=""
        Session("ErrorDb")=""
        Session("ErrorCatg")=""
        Session("ErrorPers")=""
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

        .Edit {
            margin-left: 10px;
        }

    </style>
</head>

<body>
    <%
    If TransDate = "" Or IsNull(TransDate) = True Then
        Session("ErrorDate")="Please Enter Transaction Date"
        response.redirect("Form02.asp")
    End If
    
    if Catg = "-1" then
        Session("ErrorCatg")="No Category is Selected"
        response.redirect("Form02.asp")
    end if
    
    if Person = "-1" then
        Session("ErrorPers")="No Person is Selected"
        response.redirect("Form02.asp")
    end if
    
   If Desc = "" Or IsNull(Desc) = True Or Len(Desc)=0 Then
        Session("ErrorDesc")="Enter Description for Your Transaction"
        response.redirect("Form02.asp")
    End If
    
    If (CrAmount <> "") And (DbAmount <> "") Then
        Session("ErrorCr")="You Cannot Provide Credit and Debit Together"
        response.redirect("Form02.asp")
    End If
    
    If (CrAmount = "") And (DbAmount = "") Then
        Session("ErrorCr")="You Cannot Leave Credit and Debit null together"
        response.redirect("Form02.asp")
    End If
    
    If DbAmount = "" Then
        If CrAmount = "" Or IsNull(CrAmount) = True Then
            Session("ErrorCr")="Credit Amount Cannot be Null"
            response.redirect("Form02.asp")
        ElseIf IsNumeric(CrAmount) = False Then
            Session("ErrorCr")="Credit Amount cannot contain non numeric value"
            response.redirect("Form02.asp")
        ElseIf CrAmount <= 0 Then
            Session("ErrorCr")="Credit Amount cannot be less than or equal to Zero"
            response.redirect("Form02.asp")
        End If
    End If 
    
    If CrAmount = "" Then
        If DbAmount = "" Or IsNull(DbAmount) = True Then
            Session("ErrorDb")="Debit Amount Cannot be Null"
            response.redirect("Form02.asp")
        ElseIf IsNumeric(DbAmount) = False Then
            Session("ErrorDb")="Debit Amount cannot contain non numeric value"
            response.redirect("Form02.asp")
        ElseIf DbAmount <= 0 Then
            Session("ErrorDb")="Debit Amount cannot be less than or equal to Zero"
            response.redirect("Form02.asp")
        End If
    End If
%>


    <div class="detail">
        <h2>New Transaction Detail</h2>

        <div>
            <h4>
                Transaction Date:
                <span>
                    <% response.write(TransDate) %>
                </span>
            </h4>
        </div>

        <div>
            <h4>
                Category:
                <span>
                    <% 
                        Select Case Cint(Catg)
                        
                            Case 1
                            response.write("Home Expense")
                            
                            Case 2
                            response.write("Maintainance")
                            
                            Case 3
                            response.write("Education")
                            
                            Case 4
                            response.write("Medical")
                        
                        End Select
                    %>
                </span>
            </h4>
        </div>

        <div>
            <h4>
                Person:
                <span>
                    <% 
                        Select Case Cint(Person)
                        
                            Case 1
                            response.write("Sohail")
                            
                            Case 2
                            response.write("Nabeel")
                            
                            Case 3
                            response.write("Raheel")
                            
                            Case 4
                            response.write("Karachi")
                        
                        End Select
                    %>
                </span>
            </h4>
        </div>

        <div>
            <h4>
                Transaction Description:
                <span>
                    <% response.write(Desc)%>
                </span>
            </h4>
        </div>

        <div>
            <h4>
                Credit Amount:
                <span>
                    <% response.write(CrAmount) %>
                </span>
            </h4>
        </div>

        <div>
            <h4>
                Debit Amount:
                <span>
                    <% response.write(DbAmount) %>
                </span>
            </h4>
        </div>
    </div>

    <div class="Edit">
        <div>
            <label for="">Transaction Date</label>
            <input type="date" name="TxtTransDate" value="<% response.write(TransDate) %>">
        </div>

        <div>
            <label for="">Category</label>
            <select name="TxtCatg">
                <option value="-1">Select Category</option>
                <% If Catg = 1 Then %>
                <option value="1" selected>Home Expense</option>
                <% Else %>
                <option value="1">Home Expense</option>
                <% End If %>

                <% If Catg = 2 Then %>
                <option value="2" selected>Maintainance</option>
                <% Else %>
                <option value="2">Maintainance</option>
                <% End If %>

                <% If Catg = 3 Then %>
                <option value="3" selected>Education</option>
                <% Else %>
                <option value="3">Education</option>
                <% End If %>

                <% If Catg = 4 Then %>
                <option value="4" selected>Medical</option>
                <% Else %>
                <option value="4">Medical</option>
                <% End If %>
            </select>
        </div>

        <div>
            <label for="">Person</label>
            <select name="TxtPerson">
                <option value="-1">Select Person</option>
                <% If Person = 1 Then %>
                <option value="1" selected>Sohail</option>
                <% Else %>
                <option value="1">Sohail</option>
                <% End If %>

                <% If Person = 2 Then %>
                <option value="2" selected>Nabeel</option>
                <% Else %>
                <option value="2">Nabeel</option>
                <% End If %>

                <% If Person = 3 Then %>
                <option value="3" selected>Raheel</option>
                <% Else %>
                <option value="3">Raheel</option>
                <% End If %>

                <% If Person = 4 Then %>
                <option value="4" selected>Karachi</option>
                <% Else %>
                <option value="4">Karachi</option>
                <% End If %>
            </select>
        </div>

        <div>
            <label for="">Description</label>
            <br>
            <textarea name="TxtDesc" cols="50" rows="5" draggable="false"><% response.write(Desc) %></textarea>
        </div>

        <div>
            <label for="">Credit Amount</label>
            <input type="text" name="TxtCrAmount" value="<% response.write(CrAmount) %>">
        </div>

        <div>
            <label for="">Debit Amount</label>
            <input type="text" name="TxtDbAmount" value="<% response.write(DbAmount) %>">
        </div>

    </div>
</body>

</html>
