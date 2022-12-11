<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Lesson 05 HTML Forms</title>
</head>

<body>
    <h2>HTML Forms</h2>

    <form action="" method="post">
        <div>
            <label for="textname">Enter Name:</label>
            <input type="text" id="textname" value="Nabeel">
        </div>

        <div>
            <label for="textfathername">Enter Father Name:</label>
            <input type="text" id="textfathername" placeholder="Enter Father Name" maxlength="10">
        </div>

        <div>
            <label for="textpassword">Enter Password:</label>
            <input type="password" id="textpassword" required>
        </div>

        <div>
            <label for="">Enter Age</label>
            <input type="text" value="20" readonly size="5">
        </div>

        <div>
            <label for="">Enter Address</label>
            <input type="text" value="Karachi" disabled>
        </div>

        <div>
            <input type="submit" value="Submit Form">
            <input type="Reset" value="Reset Form">
        </div>
    </form>

    <h1>Form No. 2 Office Only</h1>

    <form action="">
        <fieldset>
            <legend>Employee Detail Form:</legend>
            <div>
                <label for="textemp">Enter Employee Name:</label>
                <input type="text" id="textemp" value="Nabeel">
            </div>

            <div>
                <label for="textempfather">Enter Father Name:</label>
                <input type="text" id="textempfather" placeholder="Enter Father Name" maxlength="10" autofocus>
            </div>

            <div>
                <input type="submit" value="Submit Form">
                <input type="Reset" value="Reset Form">
            </div>
        </fieldset>
    </form>

    <h2>Input Types</h2>
    <form action="">
        <div>
            <h3>Education</h3>
            <label for="">Matric</label>
            <input type="checkbox" id="chkmatric">

            <label for="">Inter</label>
            <input type="checkbox" id="chkinter">

            <label for="">Bachelours</label>
            <input type="checkbox" id="chkbachlours">

            <label for="">Masters</label>
            <input type="checkbox" id="chlmasters">
        </div>
        <div>
            <h3>Gender</h3>
            <label for="">Male</label>
            <input type="radio" id="rdmale" name="Gender">

            <label for="">Female</label>
            <input type="radio" id="rdfemale" name="Gender">
        </div>

        <div>
            <h3>Marital Status</h3>

            <label for="">Married</label>
            <input type="radio" id="rdmarried" name="MaritalStatus">

            <label for="">Single</label>
            <input type="radio" id="rdsingle" name="MaritalStatus">

            <label for="">Divorced</label>
            <input type="radio" id="rddivorced" name="MaritalStatus">
        </div>
        <div>
            <label for="">Enter Address</label><br>
            <textarea name="" id="" cols="30" rows="10">Karachi, Pakistan</textarea>
        </div>

        <div>
            <label for="">Select Country</label>
            <select name="" id="country">
                <option value="0">Select Country</option>
                <option value="1">Pakistan</option>
                <option value="2">India</option>
                <option value="3">Turkey</option>
                <option value="4">Germany</option>
            </select>
        </div>

        <div>
            <label for="">Choose Country</label>
            <select name="" id="countrylist" size="10" multiple>
                <option value="1">Pakistan</option>
                <option value="2">India</option>
                <option value="3" selected>Turkey</option>
                <option value="4">Germany</option>
            </select>
        </div>

        <div>
            <label for="">Select Cars</label>
            <select name="" id="cars">
                <optgroup label="Toyota">
                    <option value="1">Corolla</option>
                    <option value="2">Witz</option>
                    <option value="3">Camry</option>
                </optgroup>
                <optgroup label="Cheverlot">
                    <option value="4">Tahoe</option>
                    <option value="5">Tahoe Excel</option>
                </optgroup>
                <optgroup label="BMW">
                    <option value="6">BMW 100</option>
                    <option value="7">BMW 300</option>
                    <option value="8">BMW 1000</option>
                </optgroup>
            </select>
        </div>

        <div>
            <label for="">Enter Color</label>
            <input list="colors">

            <datalist id="colors">
                <option value="Red">
                <option value="Blue">
                <option value="Green">
                <option value="Grey">
                <option value="Pink">
                <option value="Black">
            </datalist>
        </div>
    </form>

    <div>
        <h2>Input Types Examples</h2>

        <label for="">Input Type Button</label>
        <input type="button">

        <br><br>

        <label for="">Input Type Checkbox</label>
        <input type="checkbox">

        <br><br>

        <label for="">Input Type Color</label>
        <input type="color">

        <br><br>

        <label for="">Input Type Date</label>
        <input type="date">

        <br><br>

        <label for="">Input Type Datetime-local</label>
        <input type="datetime-local">

        <br><br>

        <label for="">Input Type email</label>
        <input type="email">

        <br><br>

        <label for="">Input Type File</label>
        <input type="file">

        <br><br>
        <!---
        <label for="">Input Type Hidden</label>
        -->
        Hidden field value here
        <input type="hidden" value="Hidden Textbox">

        <br><br>

        <label for="">Input Type Image</label>
        <input type="image">

        <br><br>

        <label for="">Input Type Month</label>
        <input type="month">

        <br><br>

        <label for="">Input Type Number</label>
        <input type="number">

        <br><br>

        <label for="">Input Type Password</label>
        <input type="password">

        <br><br>

        <label for="">Input Type Radio</label>
        <input type="radio">

        <br><br>

        <label for="">Input Type Range</label>
        <input type="range">

        <br><br>

        <label for="">Input Type Reset</label>
        <input type="reset">

        <br><br>

        <label for="">Input Type Search</label>
        <input type="search">

        <br><br>

        <label for="">Input Type Submit</label>
        <input type="submit">

        <br><br>

        <label for="">Input Type Tel</label>
        <input type="tel">

        <br><br>

        <label for="">Input Type Text</label>
        <input type="text">

        <br><br>

        <label for="">Input Type Time</label>
        <input type="time">

        <br><br>

        <label for="">Input Type URL</label>
        <input type="url">

        <br><br>

        <label for="">Input Type Week</label>
        <input type="week">

    </div>



    <p>
        <br><br><br><br><br><br><br><br><br><br><br><br>
    </p>
</body>

</html>
