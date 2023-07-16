<?php 
include 'dbconnection.php';
session_start();

if(isset($_GET['c_id']))
{
    
    $order_id=$_GET['c_id'];
    echo "$order_id";
    

        
    $sql="SELECT * FROM model WHERE model='$order'";
    $result=mysqli_query($db, $sql);
    $row=mysqli_fetch_array($result);
    $pName=$row['name'];
     //$pPrice=$row['product_price'];
    $delivery_charge=50;
     //$total_price=$pPrice+$delivery_charge;
     //$pImage=$row['product_image'];
 }
        else
        {
            echo "No product found";
            //$delivery_charge=50;
            
        }
        
?>
<!DOCTYPE HTML>
<html>
<head>
<title></title>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>

<div class="header">	
<div class="wrap"> 
	<div class="header-bot">
		 <div class="logo">
			 <a href="about.html"><img src="images/logo.png" alt="" style="width:450px; height: 160px;"></a>
		 </div>
		 
		 
		 <div class="cart">
			
           <div>
             <h3> Welcome <?=$_SESSION['s_name'];?> !! </h3>
		 </div>
            
		    <div class="menu-main">
		    
			   <ul class="dc_css3_menu">
					<li class="active"><a href="indexlogin.php">Home</a></li>
                    <li><a href="services.php">Brands</a></li>
                     <li><a href="booking.php">Book</a></li>
                     <li><a href="orders.php">Orders</a></li>
                     <li><a href="logout.php">Logout</a></li>
		     	</ul>
                
			 <div class="clear"></div>
			</div>	
						
		</div>	
		
		
		<div class="clear"></div> 
	   </div>
	  </div>	
      
</div>

<div class="header-bottom">
	<div class="container">
        <div class="row justify-content-center">
            <div class="col-md-10 mb-5">
                <h2 class="text-center p-2 text-primary">Fill The Details to Complete Your Order</h2>
                <h3>Product Details :</h3>
                <table class="table table-bordered" width="500px">
                    <tr>
                        <th>Car Model :</th>
                        <td><?=$pName?></td>
                        <!-- <td rowspan="4" class="text-center"><img src="" width="200"></td> -->
                        <td></td>
                        <td rowspan="4" class="text-center"><img src="" width="200"></td>
                    </tr>
                    <tr>
                        <th>Product price :</th>
                        <!-- <td><=number_format($pPrice)?>/-</td> -->
                        <td>/-</td>
                    </tr>
                    <tr>
                        <th>Delivery Charge :</th>
                        <!-- <td><?number_format($delivery_charge)?>/-</td> -->
                        <td>/-</td>
                    </tr> 
                    <tr>
                        <th>Total Price :</th>
                        <!-- <td><=number_format($total_price)?>/-</td> -->
                        <td>/-</td>
                    </tr>              
                </table>
                <h4>Enter your details :</h4>
                <form action="pay.php" method="post" accept-charset="utf-8">
                    <input type="hidden" name="product_name" value="<?=$pName?>">
                    <input type="hidden" name="product_price" value="<?=$pName?>">
                    <div class="form-group">
                        <input type="text" name="name" class="form-control" placeholder="enter your name" required>
                    </div>
                    <div class="form-group">
                        <input type="email" name="email" class="form-control" placeholder="enter your e-mail" required>
                    </div>
                    <div class="form-group">
                        <input type="el" name="phone" class="form-control" placeholder="enter your phone number" required>
                    </div>
                    <div class="form-group">
                        <input type="button" name="button" class="btn-btn-danger btn-lg" value="click to pay :  /-">
                        <!-- <=number_format($total_price)?> -->
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>








<div class="footer">
	<div class="wrap">
	   <div class="footer-top">				
				<div class="col_1_of_5 span_1_of_5">
					<div class="footer-grid twitts">
					<h3>Our Company</h3>
						<div class="f_menu">
							 <ul>
						          <li>This is a CAR selling dealer</li>
						     	  <li>Please read our Terms and Conditions </li>
						     </ul>
						</div>
				   </div>
				</div>
				
				<div class="col_1_of_5 span_1_of_5">
					<div class="footer-grid twitts">
						<h3>Get in touch</h3>
						<ul class="follow_icon">
							<li><a href="#" style="opacity: 1;"><img src="images/follow_icon.png" alt=""></a></li>
							<li><a href="#" style="opacity: 1;"><img src="images/follow_icon1.png" alt=""></a></li>
							<li><a href="#" style="opacity: 1;"><img src="images/follow_icon2.png" alt=""></a></li>
							<li><a href="#" style="opacity: 1;"><img src="images/follow_icon3.png" alt=""></a></li>
							<li><a href="#" style="opacity: 1;"><img src="images/follow_icon4.png" alt=""></a></li>
							<li><a href="#" style="opacity: 1;"><img src="images/follow_icon5.png" alt=""></a></li>
						</ul>
						<p>+880-1581833021</p>
						<span>afridibhuiyan47@gmail.com</span>
					</div>
				</div>
				<div class="clear"></div>
		</div>
	</div>
</div>		

</body>
</html>






        
        
       
    	
    	
            