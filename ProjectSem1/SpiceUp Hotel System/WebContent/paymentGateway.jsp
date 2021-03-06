
<!DOCTYPE html>
<%
	String tableIds=request.getParameter("tableIDs");
 	System.out.println("Table Id on Payment Page:"+tableIds); 
 	session.setAttribute("tbID",tableIds); 
%>
<html lang="en">
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        .row {
  display: -ms-flexbox; 
  display: flex;
  -ms-flex-wrap: wrap; 
  flex-wrap: wrap;
  margin: 0 -16px;
}

.col-25 {
  -ms-flex: 25%; 
  flex: 25%;
}

.col-50 {
  -ms-flex: 50%;
  flex: 50%;
}

.col-75 {
  -ms-flex: 75%; 
  flex: 75%;
}

.col-25,
.col-50,
.col-75 {
  padding: 0 16px;
}

.container {
  background-color:#d8d8d8;
  padding: 5px 20px 15px 20px;
  border: 1px solid goldenrod;
  border-radius: 3px;
}

input[type=text] {
  width: 1200px;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}
input[type=password] {
  width: 1200px;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

label {
  margin-bottom: 10px;
  display: block;
}

.icon-container {
  margin-bottom: 20px;
  padding: 7px 0;
  font-size: 24px;
}

.btn {
  background-color: #04AA6D;
  color: white;
  padding: 12px;
  margin: 10px 0;
  border: none;
  width: 1225px;
  border-radius: 3px;
  cursor: pointer;
  font-size: 17px;
}

.btn:hover {
  background-color: #45a049;
}

span.price {
  float: right;
  color: grey;
}

@media (max-width: 800px) {
  .row {
    flex-direction: column-reverse;
  }
  .col-25 {
    margin-bottom: 20px;
  }
}
    </style>
    <script type="text/javascript">
    function goPayment()
	{
    	cname=document.getElementById("cname").value;
    	ccnum=document.getElementById("ccnum").value;
    	expmonth=document.getElementById("expmonth").value;
    	expyear=document.getElementById("expyear").value;
    	cvv=document.getElementById("cvv").value;
		alert(cname+" "+ccnum+" "+expmonth+" "+expyear+" "+cvv);
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
		                         // document.getElementById('output').innerHTML=ob.responseText;
		                         str=ob.responseText;
			                     str1="Table Booked";
			                     str=str.trim();
		                         alert(ob.responseText);
		                         if(str==str1)
			                        window.location.href = "modifiedhomepagespiceup.html";
			                     else
			                        alert(ob.responseText);
		              }
		  }
		  ob.open("GET","BookTableBack.jsp?cname="+cname+"&ccnum="+ccnum+"&expmonth="+expmonth+"&expyear="+expyear+"&cvv="+cvv);
		  ob.send();   
	}
    </script>
</head>
<body>
    <div class="row">
        <div class="col-75">
          <div class="container">
            <div action="">
      
              <div class="row">
            
                <div class="col-50">
                  <h3>Payment</h3>
                  <label for="fname">Accepted Cards</label>
                  <div class="icon-container">
                    <i class="fa fa-cc-visa" style="color:navy;"></i>
                    <i class="fa fa-cc-amex" style="color:blue;"></i>
                    <i class="fa fa-cc-mastercard" style="color:red;"></i>
                    <i class="fa fa-cc-discover" style="color:orange;"></i>
                  </div>
                  <label for="cname">Name on Card</label>
                  <input type="text" id="cname" name="cardname" placeholder="abc xyz pqr">
                  <label for="ccnum">Credit card number</label>
                  <input type="text" id="ccnum" name="cardnumber" placeholder="1111-2222-3333-4444">
                  <label for="expmonth">Exp Month</label>
                  <input type="text" id="expmonth" name="expmonth" placeholder="eg-september">
      
                  <div class="row">
                    <div class="col-50">
                      <label for="expyear">Exp Year</label>
                      <input type="text" id="expyear" name="expyear" placeholder="2021">
                    </div>
                    <div class="col-50">
                      <label for="cvv">CVV</label>
                      <input type="password" id="cvv" name="cvv" placeholder="111">
                    </div>
                  </div>
                </div>
      
              </div>
         
              <input type="button" value="Continue to pay" class="btn" onclick="goPayment()">
            </div>
          </div>
        </div>
      
        <div class="col-25">
          <div class="container">
            <h4>Bill
              <span class="price" style="color:black">
                <i class="fa fa-shopping-cart"></i>
              </span>
            </h4>
            <p><a href="#">CGST</a> <span class="price">10</span></p>
            <p><a href="#">SGST</a> <span class="price">10</span></p>
            <p><a href="#">Table Booking Amount</a> <span class="price">30</span></p>
            <p><a href="#">Extra Charges</a> <span class="price">0</span></p>
            <hr>
            <p>Total <span class="price" style="color:black"><b>50</b></span></p>
          </div>
        </div>
      </div>
</body>
</html>