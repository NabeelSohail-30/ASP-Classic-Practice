<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Lesson 06 - Form Post</title>

</head>

<body>
    <form action="Lesson06FormProcess.asp" method="post">
        <fieldset>
            <legend>Employee Detail Form</legend>
            <div>
                <label for="empname">Enter Employee Name:</label>
                <input type="text" id="empname" name="empname">

                <br><br>

                <label for="empdob">Enter Employee Date of Birth</label>
                <input type="date" id="empdob" name="empdob">

                <br><br>

                <label for="empnationality">Select Nationality</label>
                <select name="empnationality" id="empnationality">
                    <option value="-1">Select Nationality</option>
                    <option value="1">Pakistani</option>
                    <option value="2">Turkish</option>
                    <option value="3">German</option>
                </select>

                <h3>Education</h3>
                <label for="chkmatric">Matric</label>
                <input type="checkbox" id="chkmatric" name="chkmatric" value="1">

                <label for="chkinter">Inter</label>
                <input type="checkbox" id="chkinter" name="chkinter" value="2">

                <label for="chkbachlours">Bachelours</label>
                <input type="checkbox" id="chkbachlours" name="chkbachlours" value="3">

                <label for="chkmasters">Masters</label>
                <input type="checkbox" id="chkmasters" name="chkmasters" value="4">

                <h3>Gender</h3>
                <label for="rdmale">Male</label>
                <input type="radio" id="rdmale" name="Gender" value="1">

                <label for="rdfemale">Female</label>
                <input type="radio" id="rdfemale" name="Gender" value="2">

                <br><br>

                <input type="submit" value="Submit Form">
                <input type="reset" value="Reset Form">

            </div>
        </fieldset>
    </form>
</body>

</html>
