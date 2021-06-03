	<head>
		<title>AAL-Anasayfa</title>
		<meta name="description" content="AAL-Anasayfa, AAL, A Anadolu Lisesi">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

		<link rel="stylesheet" href="style.css">
		<link rel="shortcut icon" href="#">
		
	</head>
	<body>
		<div id="ustbaslık">AAL| 2018 Mezunları</div>
		
		<div id="sablon">

			<section>
				<div class="seçenek">
					<ul>
						<li><a href="index.asp">Anasayfa</a></li>
						<li><a href="kisikayit.asp">Kişi Kayıt</a></li>
					
						<li><a href="forum.asp">Forum</a></li>
						<li><a href="kisiler.asp">Kişiler</a></li>
						<li><a href="fotograflar.asp">Fotoğraflar</a></li>
						<li><a href="videolar.asp">Videolar</a></li>
						<li><a href="knn.asp">Kim,Nerede,Ne Yapıyor?</a></li>
						<li><a href="harita.asp">Harita</a></li>
						
					</ul>
				</div>
				<main>
					<div class="indexdüzen">
					<div class="icerik">
						<h3>12/A-F</h3>
						<p><b>Hayatımızın en eğlenceli dönemleri birlikte geçti.<br>
						Lisenin o kocaman bahçesinde güldük, ağladık her anımızı dolu dolu yaşadık.</b></p>
						<img id="mainResim" src="image\mezuniyet.jpg" alt="">
						<div class="alticerik">
						<p><b>O güzel günlere geri dönmemiz mümkün değil ama hepimizi bir araya toplayacak
							<br>bir site oluşturmak mümkün. Bu yüzden buradayız.</b></p>
						</div>
					</div>
					<div class="login">
					
					<%
						if session("isuser")="" then 
						
						%>
					
				
					<form action="index.asp" method="POST">
						<h4>- Oturum Aç -</h4>
						<input type="text" placeholder="Kullanıcı Adı" name="user" style="margin:5px;"required>
						<input type="password" placeholder="Şifre" name="password" required>
						<input type="submit" value="Giriş Yap" style="width:110px; height:22px; margin:5px; cursor: pointer; background-color:#00FF7F; color:#00008B;">
					</form>
					<%
						response.write " Henüz hesabınız yoksa <br>hesap oluşturun." & "<b><a href='kisikayit.asp'><br>Kayıt Ol</a></b>"
					%>

<%
'Şu anki USA saatini yerel saate cevirme:
sat = split(time(),":",-1,1)
if right(time(),2)="PM" and sat(0)<>12 then
    sat(0) = sat(0) + 12
end if
sat(0) = sat(0) + 10
if sat(0)>=24 then 
	sat(0)=sat(0)-24
end if
saat_tr = sat(0) & ":" & sat(1) & ":" & left(sat(2),2)
%>
					
					<% else
						
						x=DatePart("h",Time())
						if x<5 then
							response.write"<br><br><p><b>İYİ GECELER</b><p>"& "<b>"&session("isuser")&"</b>"& "<p>"
						elseif x<12 then	
							response.write"<br><br><p><b>GÜNAYDIN</b><p>" &"<b>"& session("isuser")&"</b>"& "<p>"
						elseif x<18 then
							response.write"<br><br><p><b>İYİ GÜNLER</b><p>"& "<b>"&session("isuser")&"</b>"& "<p>"
						else
							response.write"<br><br><p><b>İYİ AKŞAMLAR</b><p>"& "<b>"&session("isuser")&"</b>"& "<p>"
						
						end if
						
						response.write"<b><br><a href='cikis.asp'><p>Çıkış Yap</a></b>"
					end if
					%>
				</div>
			
				</main>
			
			</section>
			
		</div>
		</div>
	
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

