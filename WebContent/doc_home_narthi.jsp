<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
	
	<script>
		function startTime() {
			var d = new Date();
			d.setHours(d.getHours() + 8);
			
			var x = setInterval(function() {
				var now = new Date().getTime();
				var distance = d - now;
				
				var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
				var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * +60));
				var seconds = Math.floor((distance % (1000 * 60)) / 1000);
				
				document.getElementById("demo").innerHTML = hours + "h " + minutes + "m " + seconds + "s ";
				
				if(distance < 0) {
					clearInterval(x);
					document.getElementById("demo").innerHTML = "Your work time is over";
					}
			
			} , 1000);
		}
		
		function startTime2() {
			var d = new Date();
			d.setHours(d.getHours() + 1);
			
			var x = setInterval(function() {
				var now = new Date().getTime();
				var distance = d - now;
				
				var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
				var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
				var seconds = Math.floor((distance % (1000 * 60)) / 1000);
				
				document.getElementById("demo2").innerHTML = hours + "h " + minutes + "m " + seconds + "s ";
				
				if(distance < 0) {
					clearInterval(x);
					document.getElementById("demo2").innerHTML = "Your lunch time is over";
				} 
			}, 1000);
		}
		
		function startTime3() {
			var d = new Date();
			d.setMinutes(d.getMinutes() + 15);
			
			var x = setInterval(function() {
				var now = new Date().getTime();
				var distance = d - now;
				
				var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
				var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
				var seconds = Math.floor((distance % (1000 * 60)) / 1000);
				
				document.getElementById("demo3").innerHTML = hours + "h " + minutes + "m " + seconds + "s ";
				
				if(distance < 0) {
					clearInterval(x);
					document.getElementById("demo3").innerHTML = "Your breakfast time is over";
				} 
			}, 1000);
		}
		
		function tstartTime() {
			var d = new Date();
			d.setHours(d.getHours() + 8);
			
			var x = setInterval(function() {
				var now = new Date().getTime();
				var distance = d - now;
				
				var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
				var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * +60));
				var seconds = Math.floor((distance % (1000 * 60)) / 1000);
				
				document.getElementById("tdemo").innerHTML = hours + "h " + minutes + "m " + seconds + "s ";
				
				if(distance < 0) {
					clearInterval(x);
					document.getElementById("tdemo").innerHTML = "Your work time is over";
					}
			
			} , 1000);
		}
		
		function tstartTime2() {
			var d = new Date();
			d.setHours(d.getHours() + 1);
			
			var x = setInterval(function() {
				var now = new Date().getTime();
				var distance = d - now;
				
				var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
				var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
				var seconds = Math.floor((distance % (1000 * 60)) / 1000);
				
				document.getElementById("tdemo2").innerHTML = hours + "h " + minutes + "m " + seconds + "s ";
				
				if(distance < 0) {
					clearInterval(x);
					document.getElementById("tdemo2").innerHTML = "Your lunch time is over";
				} 
			}, 1000);
		}
		
		function tstartTime3() {
			var d = new Date();
			d.setMinutes(d.getMinutes() + 15);
			
			var x = setInterval(function() {
				var now = new Date().getTime();
				var distance = d - now;
				
				var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
				var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
				var seconds = Math.floor((distance % (1000 * 60)) / 1000);
				
				document.getElementById("tdemo3").innerHTML = hours + "h " + minutes + "m " + seconds + "s ";
				
				if(distance < 0) {
					clearInterval(x);
					document.getElementById("tdemo3").innerHTML = "Your breakfast time is over";
				} 
			}, 1000);
		}
		
		function fstartTime() {
			var d = new Date();
			d.setHours(d.getHours() + 8);
			
			var x = setInterval(function() {
				var now = new Date().getTime();
				var distance = d - now;
				
				var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
				var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * +60));
				var seconds = Math.floor((distance % (1000 * 60)) / 1000);
				
				document.getElementById("fdemo").innerHTML = hours + "h " + minutes + "m " + seconds + "s ";
				
				if(distance < 0) {
					clearInterval(x);
					document.getElementById("fdemo").innerHTML = "Your work time is over";
					}
			
			} , 1000);
		}
		
		function fstartTime2() {
			var d = new Date();
			d.setHours(d.getHours() + 1);
			
			var x = setInterval(function() {
				var now = new Date().getTime();
				var distance = d - now;
				
				var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
				var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
				var seconds = Math.floor((distance % (1000 * 60)) / 1000);
				
				document.getElementById("fdemo2").innerHTML = hours + "h " + minutes + "m " + seconds + "s ";
				
				if(distance < 0) {
					clearInterval(x);
					document.getElementById("fdemo2").innerHTML = "Your lunch time is over";
				} 
			}, 1000);
		}
		
		function fstartTime3() {
			var d = new Date();
			d.setMinutes(d.getMinutes() + 15);
			
			var x = setInterval(function() {
				var now = new Date().getTime();
				var distance = d - now;
				
				var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
				var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
				var seconds = Math.floor((distance % (1000 * 60)) / 1000);
				
				document.getElementById("fdemo3").innerHTML = hours + "h " + minutes + "m " + seconds + "s ";
				
				if(distance < 0) {
					clearInterval(x);
					document.getElementById("fdemo3").innerHTML = "Your breakfast time is over";
				} 
			}, 1000);
		}
		function myFunction() {
			window.open("doc_appoint_narthi.jsp");
		}
	</script>
	
	<meta charset="ISO-8859-1">
	<title>Online Clinic Management</title>
	<link rel="stylesheet" type="text/css" href="doc_home.css">
</head>


<body>

	

	<pre><h1 class="text">   Treatment Record Management</pre>	</h1>

	
	<div class="bod" >

		<div class="row">
			
			<div class="column">
				<div class="div1"><u>Dr.RajniKanth MBBS</u><br><br>
					<img src="happydoctor1.jpg" height="180px" width="190px"><br>
					
					<button id="start" onclick="startTime()">Start</button> <p id="demo"></p>
					<button id="start" onclick="startTime2()">Lunch</button> <p id="demo2"></p>
					<button id="start" onclick="startTime3()">BreakFast</button> <p id="demo3"></p>
					<button id="main" onClick="myFunction()" name="doctor" value="Dr.Sangakkara MBBS">Appointments</button>
				</div>
			</div>
			

			<form action="doc_appoint_narthi.jsp" method="post">
			<div class="column">
				<div class="div2"><u>Dr.Sangakkara MBBS</u><br><br>
					<img src="happydoctor3.jpg" height="180px" width="190px"><br>
					
					<button id="start" onclick="tstartTime()"> Start</button> <p id="tdemo"></p>
					<button id="start" onclick="tstartTime2()">Lunch</button> <p id="tdemo2"></p>
					<button id="start" onclick="tstartTime3()">BreakFast</button> <p id="tdemo3"></p>
					<button id="main" onClick="parent.location='doc_appoint_narthi.jsp'" name="doctor" value="Dr.RajniKanth MBBS">Appointments</button>
				</div>
			</div>
			</form>
		
			<form action="doc_appoint_narthi.jsp" method="post">
			<div class="column">
				<div class="div2"><u>Dr.Vithurson MBBS</u><br><br>
					<img src="happydoctor2.jpg" height="180px" width="190px"><br>
					
					<button id="start" onclick="fstartTime()"> Start</button> <p id="fdemo"></p>
					<button id="start" onclick="fstartTime2()">Lunch</button> <p id="fdemo2"></p>
					<button id="start" onclick="fstartTime3()">Breakfast</button> <p id="fdemo3"></p>
					<button id="main"onClick="parent.location='doc_appoint_narthi.jsp'" name="doctor" value="Dr.Vithurson MBBS">Appointments</button>
				</div>
			</div>
			
			</form>
		</div>
	</div>

 


</body>

</html>