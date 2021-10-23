<%
	String name=request.getParameter("name");
	String email=request.getParameter("email");
	String phno=request.getParameter("phno");
	String noofppl=request.getParameter("noofppl");
	String date=request.getParameter("date");
	String Timing=request.getParameter("Timing");
	String msg=request.getParameter("msg");
	/* System.out.println(name);
	System.out.println(email);
	System.out.println(phno);
	System.out.println(noofppl);
	System.out.println(date);
	System.out.println(Timing);
	System.out.println(msg); */
	
	session.setAttribute("nm",name);
	session.setAttribute("emID",email);
	session.setAttribute("phoneno",phno);
	session.setAttribute("nop",noofppl);
	session.setAttribute("dt",date);
	session.setAttribute("timet",Timing);
	session.setAttribute("message",msg);
	
	
%>
<html>
    <head>
        <style>
            .room-header{
                text-align: center;
            }
            .table{
                margin: 10px;
                display: flex;
                flex-direction: column;
            }
            .room{
                margin: auto;
                width: 40%;
                border: 3px solid #73AD21;
                padding: 10px;
            }
            .table-row{
                display: flex;
                justify-content: space-between;
                margin: 50px 50px;
            }
            canvas{
                border-radius: 10px;
                cursor: pointer;
            }
            .chair{
                border-radius: 10px;
                margin: 5px 0;
            }
            .chair-set{
                display: flex;
                justify-content: space-around;
            }
            input[type=checkbox]{
                display: none;
            }
        </style>
        <script>
            function changeColor1()
            {
                if(document.getElementById("table1").checked == true)
                {
                    document.getElementById("canvasTable1").style.background = "red";
                }
                else
                {
                    document.getElementById("canvasTable1").style.background = "green";
                }
            }

            function changeColor2()
            {
                if(document.getElementById("table2").checked == true)
                {
                    document.getElementById("canvasTable2").style.background = "red";
                }
                else
                {
                    document.getElementById("canvasTable2").style.background = "green";
                }
            }

            function changeColor3()
            {
                if(document.getElementById("table3").checked == true)
                {
                    document.getElementById("canvasTable3").style.background = "red";
                }
                else
                {
                    document.getElementById("canvasTable3").style.background = "green";
                }
            }

            function changeColor4()
            {
                if(document.getElementById("table4").checked == true)
                {
                    document.getElementById("canvasTable4").style.background = "red";
                }
                else
                {
                    document.getElementById("canvasTable4").style.background = "green";
                }
            }

            function changeColor5()
            {
                if(document.getElementById("table5").checked == true)
                {
                    document.getElementById("canvasTable5").style.background = "red";
                }
                else
                {
                    document.getElementById("canvasTable5").style.background = "green";
                }
            }
            
            function changeColor6()
            {
                if(document.getElementById("table6").checked == true)
                {
                    document.getElementById("canvasTable6").style.background = "red";
                }
                else
                {
                    document.getElementById("canvasTable6").style.background = "green";
                }
            }

            function changeColor7()
            {
                if(document.getElementById("table7").checked == true)
                {
                    document.getElementById("canvasTable7").style.background = "red";
                }
                else
                {
                    document.getElementById("canvasTable7").style.background = "green";
                }
            }

            function changeColor8()
            {
                if(document.getElementById("table8").checked == true)
                {
                    document.getElementById("canvasTable8").style.background = "red";
                }
                else
                {
                    document.getElementById("canvasTable8").style.background = "green";
                }
            }

            function tableSelection(){
            	var tableIDs = "";
                if(document.getElementById("table1").checked == true)
                {
                	tableIDs = tableIDs + "1";
                }
                if(document.getElementById("table2").checked == true)
                {
                	tableIDs = tableIDs + " 2";
                }
                if(document.getElementById("table3").checked == true)
                {
                	tableIDs = tableIDs + " 3";
                }
                if(document.getElementById("table4").checked == true)
                {
                	tableIDs = tableIDs + " 4";
                }
                if(document.getElementById("table5").checked == true)
                {
                	tableIDs = tableIDs + " 5";
                }
                if(document.getElementById("table6").checked == true)
                {
                	tableIDs = tableIDs + " 6";
                }
                if(document.getElementById("table7").checked == true)
                {
                	tableIDs = tableIDs + " 7";
                }
                 if(document.getElementById("table8").checked == true)
                {
                	tableIDs = tableIDs + " 8";
                }
                
                tableIDs = tableIDs.replaceAll(" ",",");
                console.log(tableIDs);
            
            
            ob=new XMLHttpRequest();

			  if(window.XMLHttpRequest)
			  {  
				  ob=new XMLHttpRequest();  
			  }  
			  else if(window.ActiveXObject)
			  {  
				  ob=new ActiveXObject("Microsoft.XMLHTTP");   
			  } 
			  ob.onreadystatechange=function()
			  {
			              if(ob.readyState==4 && ob.status==200)
			              {
			            	  alert(tableIDs+" Booked");
			            	  var url = "paymentGateway.jsp?tableIDs="+tableIDs;
			            	  window.location.href = url;
			   			 }
			  }
			  ob.open("GET","paymentGateway.jsp?tableIDs="+tableIDs);
			  ob.send();
			 }  
			  
        </script>
    </head>
    <body>
        <div>
            <div class="room-header">
                <h1>Please Select Table</h1>
            </div> 
            <!-- <form id="tab1check" action="paymentGateway.jsp" method="POST"> -->
            <div class="room">
                <div class="table-row">
                    <div class="table">
                        <div class="chair-set">
                            <canvas id="ch1" class="chair" width="40" height="17" style="background-color:brown;"></canvas>
                            <canvas id="ch1" class="chair" width="40" height="17" style="background-color:brown;"></canvas>
                        </div>
                        <input type="checkbox" id="table1" name="table1">
                        <label for="table1" onclick="changeColor1()">
                            <canvas id="canvasTable1" width="120" height="50" style="background-color:red;"></canvas>
                        </label>
                        <div class="chair-set">
                            <canvas id="ch1" class="chair" width="40" height="17" style="background-color:brown;"></canvas>
                            <canvas id="ch1" class="chair" width="40" height="17" style="background-color:brown;"></canvas>
                        </div>
                    </div>
                    <div class="table">
                        <div class="chair-set">
                            <canvas id="ch1" class="chair" width="40" height="17" style="background-color:brown;"></canvas>
                            <canvas id="ch1" class="chair" width="40" height="17" style="background-color:brown;"></canvas>
                        </div>
                        <input type="checkbox" id="table2" name="table2">
                        <label for="table2" onclick="changeColor2()">
                            <canvas id="canvasTable2" width="120" height="50" style="background-color:red;"></canvas>
                        </label>
                        <div class="chair-set">
                            <canvas id="ch1" class="chair" width="40" height="17" style="background-color:brown;"></canvas>
                            <canvas id="ch1" class="chair" width="40" height="17" style="background-color:brown;"></canvas>
                        </div>
                    </div>
                </div>
                <div class="table-row">
                    <div class="table">
                        <div class="chair-set">
                            <canvas id="ch1" class="chair" width="40" height="17" style="background-color:brown;"></canvas>
                            <canvas id="ch1" class="chair" width="40" height="17" style="background-color:brown;"></canvas>
                        </div>
                        <input type="checkbox" id="table3" name="table3">
                        <label for="table3" onclick="changeColor3()">
                            <canvas id="canvasTable3" width="120" height="50" style="background-color:red;"></canvas>
                        </label>
                        <div class="chair-set">
                            <canvas id="ch1" class="chair" width="40" height="17" style="background-color:brown;"></canvas>
                            <canvas id="ch1" class="chair" width="40" height="17" style="background-color:brown;"></canvas>
                        </div>
                    </div>
                    <div class="table">
                        <div class="chair-set">
                            <canvas id="ch1" class="chair" width="40" height="17" style="background-color:brown;"></canvas>
                            <canvas id="ch1" class="chair" width="40" height="17" style="background-color:brown;"></canvas>
                        </div>
                        <input type="checkbox" id="table4" name="table4">
                        <label for="table4" onclick="changeColor4()">
                            <canvas id="canvasTable4" width="120" height="50" style="background-color:red;"></canvas>
                        </label>
                        <div class="chair-set">
                            <canvas id="ch1" class="chair" width="40" height="17" style="background-color:brown;"></canvas>
                            <canvas id="ch1" class="chair" width="40" height="17" style="background-color:brown;"></canvas>
                        </div>
                    </div>
                </div>
                <div class="table-row">
                    <div class="table">
                        <div class="chair-set">
                            <canvas id="ch1" class="chair" width="40" height="17" style="background-color:brown;"></canvas>
                            <canvas id="ch1" class="chair" width="40" height="17" style="background-color:brown;"></canvas>
                        </div>
                        <input type="checkbox" id="table5" name="table5">
                        <label for="table5" onclick="changeColor5()">
                            <canvas id="canvasTable5" width="120" height="50" style="background-color:red;"></canvas>
                        </label>
                        <div class="chair-set">
                            <canvas id="ch1" class="chair" width="40" height="17" style="background-color:brown;"></canvas>
                            <canvas id="ch1" class="chair" width="40" height="17" style="background-color:brown;"></canvas>
                        </div>
                    </div>
                    <div class="table">
                        <div class="chair-set">
                            <canvas id="ch1" class="chair" width="40" height="17" style="background-color:brown;"></canvas>
                            <canvas id="ch1" class="chair" width="40" height="17" style="background-color:brown;"></canvas>
                        </div>
                        <input type="checkbox" id="table6" name="table6">
                        <label for="table6" onclick="changeColor6()">
                            <canvas id="canvasTable6" width="120" height="50" style="background-color:red;"></canvas>
                        </label>
                        <div class="chair-set">
                            <canvas id="ch1" class="chair" width="40" height="17" style="background-color:brown;"></canvas>
                            <canvas id="ch1" class="chair" width="40" height="17" style="background-color:brown;"></canvas>
                        </div>
                    </div>
                </div>
                <div class="table-row">
                    <div class="table">
                        <div class="chair-set">
                            <canvas id="ch1" class="chair" width="40" height="17" style="background-color:brown;"></canvas>
                            <canvas id="ch1" class="chair" width="40" height="17" style="background-color:brown;"></canvas>
                        </div>
                        <input type="checkbox" id="table7" name="table7">
                        <label for="table7" onclick="changeColor7()">
                            <canvas id="canvasTable7" width="120" height="50" style="background-color:red;"></canvas>
                        </label>
                        <div class="chair-set">
                            <canvas id="ch1" class="chair" width="40" height="17" style="background-color:brown;"></canvas>
                            <canvas id="ch1" class="chair" width="40" height="17" style="background-color:brown;"></canvas>
                        </div>
                    </div>
                    <div class="table">
                        <div class="chair-set">
                            <canvas id="ch1" class="chair" width="40" height="17" style="background-color:brown;"></canvas>
                            <canvas id="ch1" class="chair" width="40" height="17" style="background-color:brown;"></canvas>
                        </div>
                        <input type="checkbox" id="table8" name="table8">
                        <label for="table8" onclick="changeColor8()">
                            <canvas id="canvasTable8" width="120" height="50" style="background-color:red;"></canvas>
                        </label>
                        <div class="chair-set">
                            <canvas id="ch1" class="chair" width="40" height="17" style="background-color:brown;"></canvas>
                            <canvas id="ch1" class="chair" width="40" height="17" style="background-color:brown;"></canvas>
                        </div>
                    </div>
                </div>
                <div style="text-align: center;">
                    <button type="submit" onclick="tableSelection()" style="font-size: 20px;padding: 10px;font-weight: 600; background-color:black;color: #fff">Confirm the Table</button>
                </div>
            </div>
          <!-- </form> -->
        </div>
    </body>
</html>