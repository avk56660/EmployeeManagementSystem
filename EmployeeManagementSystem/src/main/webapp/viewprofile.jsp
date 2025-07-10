<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Employee Management System</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            min-height: 100vh;
            padding-top: 150px;
            transition: background-image 0.5s ease;
        }

        .welcome-bar {
            position: fixed;
            top: 0;
            width: 100%;
            text-align: center;
            padding: 15px 0;
            font-size: 24px;
            font-weight: bold;
            color: whitesmoke;
            z-index: 1000;
        }
        .welcome-bar:hover{
            text-decoration: none;
            color: beige;
        }

        nav {
            position: fixed;
            top: 55px;
            width: 100%;
            display: flex;
            justify-content: center;
            gap: 30px;
            padding: 15px 0;
            z-index: 999;
            background-color: transparent;
        }

        nav a {
            color: white;
            text-decoration: none;
            font-weight: bold;
            font-size: 18px;
            cursor: pointer;
        }

        nav a:hover {
            text-decoration: underline;
            color: bisque;
        }

        .container,
        .section-content,
        .home-content {
            max-width: 800px;
            margin: 30px auto;
            background: rgba(255, 255, 255, 0.6);
            padding: 30px;
            border-radius: 25px;
            border: 2px solid #444;
            display: none;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        }
        .home-content:hover{
            text-decoration: none;
            color: black;
        }


        form {
            display: flex;
            flex-direction: column;
        }

        label {
            margin-top: 12px;
            font-weight: bold;
        }

        input,
        select,
        textarea {
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #aaa;
            border-radius: 5px;
        }

        .gender {
            display: flex;
            justify-content: space-around;
            margin-top: 5px;
        }

        .gender label {
            font-weight: normal;
        }

        button {
            margin-top: 20px;
            padding: 12px;
            background-color: lightblue;
            color: white;
            border: none;
            border-radius: 25px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #005f9e;
        }

        .home-content {
            text-align: center;
            font-size: 24px;
            font-weight: bold;
            color: darkslategray;
        }
    </style>
</head>

<body>
    <div class="welcome-bar" >
        <h3>WELCOME TO EMPLOYEE MANAGEMENT SYSTEM</h3>
    </div>

    <nav>
        <a href="employee.jsp">Home</a>
        <a href="findByEmail">View Profile</a>
        <a href="emplogout">Logout</a>
    </nav>

    <div id="home" class="container">
        <h2>Welcome to <%=session.getAttribute("email")%></h2>
        <table border='1'>
        		  <tr>
        		  	<th>Email</th>
        		  	<th>Name</th>
        		  	<th>Age</th>
        		  	<th>Gender</th>
        		  	<th>Mobile</th>
        		  	<th>Department</th>
        		  	<th>Address</th>
        		  </tr>	
      		  		<tr>
      		  			<td>${employee.email}</td>
      		  			<td>${employee.name}</td>
      		  			<td>${employee.age}</td>
      		  			<td>${employee.gender}</td>
      		  			<td>${employee.mobile}</td>
      		  			<td>${employee.department}</td>
      		  			<td>${employee.address}</td>
      		  		</tr>																											
        </table>
    </div>
    <div id="registration" class="container">
        
    </div>
    <div id="login" class="container">
        
    </div>

    <div id="admin" class="section-content">
        
    </div>

    <div id="about" class="section-content">
        
    </div>

    <div id="contact" class="section-content">
        
    </div>

    <script>
        function showSection(sectionId) {
            const sections = ['home', 'registration', 'login', 'admin', 'about', 'contact'];
            const backgrounds = {
				home: 'url(https://www.shutterstock.com/image-photo/rearview-logistics-manager-using-digital-260nw-2227968329.jpg)',
				registration: 'url(https://www.shutterstock.com/image-photo/hrm-human-resource-management-strategy-260nw-465697742.jpg)',
			    login: 'url(https://www.timedoctor.com/blog/images/2020/01/employee-management.jpg)',
				admin: 'url(https://www.shutterstock.com/image-photo/document-management-system-dms-being-260nw-1874749972.jpg)',
				about: 'url(https://www.officetimer.com/wp-content/uploads/2017/06/tackle-employee-in-effiency.jpg)',
				contact: 'url(https://www.shutterstock.com/image-photo/diverse-company-employees-having-online-260nw-2021639273.jpg)',
            };

            sections.forEach(id => {
                document.getElementById(id).style.display = (id === sectionId) ? 'block' : 'none';
            });

            document.body.style.backgroundImage = backgrounds[sectionId] || '';
        }

        showSection('home');
    </script>

</body>

</html>