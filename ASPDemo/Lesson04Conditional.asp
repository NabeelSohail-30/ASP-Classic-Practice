<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Lesson 04 - Conditional Statements and Loops</title>

    <style>
        .Images {
            margin: auto;
        }

        .Images img {
            width: 200px;
            height: 200px;
            border: 2px solid grey;
            padding: 5px;
        }

        .Images div {
            display: inline;
            align-content: center;
            padding: 10px;
            margin: 10px;
            height: 250px;
            width: 250px;
        }

    </style>
</head>

<body>

    <h2>Conditional Statements</h2>
    <ul>
        <li>If Statement</li>
        <li>If Then Else</li>
        <li>If Then ElseIf</li>
        <li>Select Case</li>
    </ul>

    <h3>Example Output</h3>
    <div>
        <%
        dim MyName
        MyName = "Hassan"
           
        if MyName = "Nabeel" Then
            response.write ("My Name is Nabeel")
        elseif MyName = "Sohail" then
            response.write ("My Father Name is Sohail")
        else 
            response.write (MyName)
        end if
        %>
    </div>

    <h3>Select Case Example</h3>
    <div>
        <%
            Dim MonthNumber
            MonthNumber = 12
            
            Select Case MonthNumber
            Case 1
                response.write("Janurary")
                
            Case 2
                response.write("Feburary")
            
            Case 3
                response.write("March")
            
            Case Else
                response.write("Month = " & MonthNumber)
            End Select
        %>
    </div>

    <h2>Loops Statement</h2>
    <h3>For Next Example</h3>
    <div>
        <%
            Dim Counter
            
            For Counter = 1 To 10
                response.write(Counter)%>
        <br>
        <% Next
        %>
    </div>

    <h3>Heading Tags</h3>
    <div>
        <h1>Heading 1</h1>
        <h2>Heading 2</h2>
        <h3>Heading 3</h3>
        <h4>Heading 4</h4>
        <h5>Heading 5</h5>
        <h6>Heading 6</h6>
    </div>

    <h3>Heading tags by Loop</h3>
    <div>
        <%  
            For Counter = 1 to 6
                response.write("<h" & Counter & ">Heading" & Counter & "</h" & Counter & ">")
            Next
        %>
    </div>


    <h3>Images Tags</h3>
    <div class="Images">
        <table>
            <tr>
                <td>
                    <div>
                        <img src='Images/Img1.jpg' alt="">
                    </div>
                </td>
                <td>
                    <div>
                        <img src="Images/Img2.jpg" alt="">
                    </div>
                </td>
                <td>
                    <div>
                        <img src="Images/Img3.jpg" alt="">
                    </div>
                </td>
                <td>
                    <div>
                        <img src="Images/Img4.jpg" alt="">
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div>
                        <img src='Images/Img5.jpg' alt="">
                    </div>
                </td>
                <td>
                    <div>
                        <img src="Images/Img6.jpg" alt="">
                    </div>
                </td>
                <td>
                    <div>
                        <img src="Images/Img7.jpg" alt="">
                    </div>
                </td>
                <td>
                    <div>
                        <img src="Images/Img8.jpg" alt="">
                    </div>
                </td>
            </tr>
        </table>
    </div>


    <h3>Images Using loop</h3>
    <div class="Images">
        <%
            For Counter = 1 to 8
                response.write("<table>")
                response.write("<tr>")
                response.write("<td>")
                response.write("<div>")
                response.write("<img src='Images/Img" & Counter & ".jpg'>")
                response.write("</div>")
                response.write("</td>")
                response.write("</tr>")
                response.write("</table>")
            Next
        %>
    </div>


</body>

</html>
