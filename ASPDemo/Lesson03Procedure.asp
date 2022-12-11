<% Option Explicit %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>

<body>
    <% 
   dim TestVar 
   TestVar = 89
   %>
    <h2>Procedures</h2>

    <div>
        Sum of Two Numbers = <% Call AddNumbers(10,35) %>
    </div>

    <div>
        Value Before Calling Procedure = <% response.write (TestVar) %>
    </div>

    <div>
        Value after calling procedure = <% Call Test() 
        response.write (testvar)
        %>
    </div>

    <div>
        Square Root of Number = <%  response.write (Square(4)) %>
    </div>

    <%
        Sub AddNumbers (Num1 , Num2)
            dim Sum
            Sum = (Num1 + Num2)
            response.write(Sum)
        end sub   
    %>

    <%
        Sub Test
            Testvar = 50        
        end sub
    %>

    <%
        Function Square(Num)
            Dim Sqr
            Sqr = (Num * Num)
            
            Square = Sqr 
        end function
    %>
</body>

</html>
