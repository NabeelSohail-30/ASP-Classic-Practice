<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <style>
        h2 {
            color: darkgreen;
        }

        p {
            border: 1px solid blue;
        }

    </style>

</head>

<body>
    <h1>
        <%
           response.write("ASP response.write example <br>")
           
           response.write("Shorthand of response.write is =")
       %>
    </h1>

    <h2>Sample ASP File 01</h2>
    <p>
        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Libero nam nesciunt doloremque, suscipit ab quis nobis blanditiis, nisi quibusdam et voluptatibus, repudiandae eius iure illo, temporibus fugit. Voluptas maxime, architecto?
    </p>

    <%
        response.write("<h2>First ASP file</h2>")
    %>

    <p>
        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Et deserunt ducimus ipsa repudiandae sint totam id animi ad fugiat modi, dolore tenetur sapiente soluta provident expedita iusto, voluptatem, eligendi iure!
    </p>

    <h2>ASP Script Sample</h2>
    <p>
        <%
            response.write ("My Name is Nabeel") 
        %>
    </p>
</body>

</html>
