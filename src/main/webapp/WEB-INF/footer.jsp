<%-- 
    Document   : footer
    Created on : May 25, 2018, 2:16:11 PM
    Author     : kristoffer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
 .footer-distributed{
	background-color: #292c2f;
	box-shadow: 0 1px 1px 0 rgba(0, 0, 0, 0.12);
	box-sizing: border-box;
	width: 100%;
	text-align: left;
	font: bold 16px sans-serif;

	padding: 55px 50px;
	margin-top: 80px;
}

.footer-distributed .footer-left,
.footer-distributed .footer-center,
.footer-distributed .footer-right{
	display: inline-block;
	vertical-align: top;
}

/* Footer left */

.footer-distributed .footer-left{
	width: 40%;
}

/* The company logo */

.footer-distributed h3{
	color:  #ffffff;
	font: normal 36px 'Cookie', cursive;
	margin: 0;
}

.footer-distributed h3 span{
	color:  #5383d3;
}

/* Footer links */

.footer-distributed .footer-links{
	color:  #ffffff;
	margin: 20px 0 12px;
	padding: 0;
}

.footer-distributed .footer-links a{
	display:inline-block;
	line-height: 1.8;
	text-decoration: none;
	color:  inherit;
}

.footer-distributed .footer-company-name{
	color:  #8f9296;
	font-size: 14px;
	font-weight: normal;
	margin: 0;
}

/* Footer Center */

.footer-distributed .footer-center{
	width: 35%;
}

.footer-distributed .footer-center i{
	background-color:  #33383b;
	color: #ffffff;
	font-size: 25px;
	width: 38px;
	height: 38px;
	border-radius: 50%;
	text-align: center;
	line-height: 42px;
	margin: 10px 15px;
	vertical-align: middle;
}

.footer-distributed .footer-center i.fa-envelope{
	font-size: 17px;
	line-height: 38px;
}

.footer-distributed .footer-center p{
	display: inline-block;
	color: #ffffff;
	vertical-align: middle;
	margin:0;
}

.footer-distributed .footer-center p span{
	display:block;
	font-weight: normal;
	font-size:14px;
	line-height:2;
}

.footer-distributed .footer-center p a{
	color:  #5383d3;
	text-decoration: none;;
}


/* Footer Right */

.footer-distributed .footer-right{
	width: 20%;
}

.footer-distributed .footer-company-about{
	line-height: 20px;
	color:  #92999f;
	font-size: 13px;
	font-weight: normal;
	margin: 0;
}

.footer-distributed .footer-company-about span{
	display: block;
	color:  #ffffff;
	font-size: 14px;
	font-weight: bold;
	margin-bottom: 20px;
}

.footer-distributed .footer-icons{
	margin-top: 25px;
}


.footer-distributed .footer-icons a{
	display: inline-block;
	width: 35px;
	height: 35px;
	cursor: pointer;
	background-color:  #33383b;
	border-radius: 2px;

	font-size: 20px;
	color: #ffffff;
	text-align: center;
	line-height: 35px;

	margin-right: 3px;
	margin-bottom: 5px;
}

/* If you don't want the footer to be responsive, remove these media queries */

@media (max-width: 880px) {

	.footer-distributed{
		font: bold 14px sans-serif;
	}

	.footer-distributed .footer-left,
	.footer-distributed .footer-center,
	.footer-distributed .footer-right{
		display: block;
		width: 100%;
		margin-bottom: 40px;
		text-align: center;
	}

	.footer-distributed .footer-center i{
		margin-left: 0;
	}

}


    </style>
    </head>

    <body>
<footer class="footer-distributed">

			<div class="footer-left">

                            <h3><img src="http://shop.johannesfog.dk/gfx/foglogok.png"</img></h3>

				<p class="footer-links">
					<a href="#">Hjem</a>
					·
					<a href="FrontController?command=employees">Mød vores medarbejdere</a>
					·
					<a href="#">Service</a>
					·
					<a href="#">Kontakt</a>
                                        
					
				</p>

				<p class="footer-company-name">Johannes Fog &copy; 2018</p>
			</div>

			<div class="footer-center">

				<div>
					<i class="fa fa-map-marker"></i>
					<p><span>34 Lyshøjvej 14</span> 3650 Ølstykke</p>
				</div>

				<div>
					<i class="fa fa-phone"></i>
					<p>+45 22437711</p>
				</div>

				<div>
					<i class="fa fa-envelope"></i>
					<p><a href="mailto:johannesfog@hotmail.dk">johannesfog@hotmail.dk</a></p>
				</div>

			</div>

			<div class="footer-right">

				<p class="footer-company-about">
					<span>Fog Trælast & Byggecenter</span>
					Køb træ, byggematerialer og alt det du behøver til hus og have inden for f.eks. maling, bad og VVS, beslag, elartikler og lamper samt haveredskaber, grill og havemøbler. Hos os får du kvalitet og den rådgivning, du har brug for.
				</p>

				<div class="footer-icons">

					<a href="https://www.facebook.com/fogtraelastbyggecenter/"><i class="fa fa-facebook"></i></a>
					<a href="https://github.com/Gonron/FogProjekt"><i class="fa fa-twitter"></i></a>
					<a href="https://twitter.com/fogbyggemarked"><i class="fa fa-linkedin"></i></a>
					<a href="https://www.youtube.com/channel/UCBzvr_fiaux-bEecVku8mTg"><i class="fa fa-github"></i></a>

				</div>

			</div>

		</footer>

	</body>
</html>
