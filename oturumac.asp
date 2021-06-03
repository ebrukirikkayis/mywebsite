	<head>
		<title>AAL-Oturum Aç</title>
		<meta name="description" content="AAL-Anasayfa, AAL, A Anadolu Lisesi">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

		<link rel="stylesheet" href="style.css">
		<link rel="shortcut icon" href="#">
		
	</head>
	<body>
		<div id="ustbaslık">AAL| 2018 Mezunları</div>
		
		
			<main>
					
				<div class="login1">
					<form action="index.asp" method="POST">
						<br><h3>- Oturum Aç -</h3>
						<p><b>Bu alana erişebilmek için lütfen giriş yapın.</b></p>
						<br><input type="text" placeholder="Kullanıcı Adı..." name="user" style="margin:5px;height:25px;"required><br>
						<input type="password" placeholder="Şifre..." name="password" style="height:25px;" required><br>
						<input type="submit" value="Giriş Yap" style="width:110px; height:22px; margin:5px; cursor: pointer; background-color:#00FF7F; color:#00008B;">
					</form>
					<%
						response.write " Henüz hesabınız yoksa <br>hesap oluşturun." & "<b><a href='kisikayit.asp'><br>Kayıt Ol</a></b>"
					%>
				</div>
			
			</main>
		
	</body>
</html> 

<%
					kulladi=request.form("user")
					sifre=request.form("password")
					set conn=Server.CreateObject("ADODB.Connection")
					conn.Open ("DRIVER={Microsoft Access Driver (*.mdb)};DBQ="& Server.MapPath("veritabanim.mdb"))
					set verigiris=Server.CreateObject("ADODB.Recordset")
					
					
					varmi="select count(*) as c from kaydol where kullaniciadi='"& kulladi&"' and sifre='"& sifre&"'"
					verigiris.Open varmi, conn,1,3
					varmi_sonuc=verigiris("c")
					
					if varmi_sonuc=1 then
						session("isuser")=kulladi
						response.redirect "index.asp"
						
					end if
%>
