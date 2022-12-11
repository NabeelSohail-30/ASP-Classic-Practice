<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Retrieve</title>
</head>

<body>
    <h2>Retrieve Session Object Values</h2>

    <h4>My Name =
        <% response.write(Session("MyName")) %>
    </h4>
    <h4>My Father Name = <% response.write(Session("FatherName")) %></h4>
    <h4>My Age = <% response.write(Session("UserAge")) %></h4>
</body>

</html>
