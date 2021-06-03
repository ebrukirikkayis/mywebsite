<%if session("isuser")="" then
	response.redirect"oturumac.asp"
end if
%>
	<head>
		<title>AAL-Kim, Nerede, Ne Yapıyor?</title>
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
					<h2>Kim, Nerede, Ne Yapıyor?</h2>
					<div class="forum">
					<%
					set conn=Server.CreateObject("ADODB.Connection")
					conn.Open ("DRIVER={Microsoft Access Driver (*.mdb)};DBQ="& Server.MapPath("veritabanim.mdb"))
					set veri=Server.CreateObject("ADODB.Recordset")
					veri.Open"kaydol", conn,1,3
					%>
                        <table id="t1">
							<tr>
								<td>ID</td>
								<td>İSİM</td>
								<td>SOYİSİM</td>
								<td>MESLEK</td>
								<td>E-MAİL</td>
								<td>TELEFON</td>
								<td>WEB.ID</td>
								<td>INSTAGRAM.ID</td>
								<td>ŞEHİR</td>
								
							</tr>
							<%
								do while not veri.eof
									response.write"<tr>"
										response.write"<td>" &veri("Kimlik") &"</td>"
										response.write"<td>" &veri("ad") &"</td>"
										response.write"<td>" &veri("soyad") &"</td>"
										response.write"<td>" &veri("meslek") &"</td>"
										response.write"<td>" &veri("email") &"</td>"
										response.write"<td>" &veri("telefon") &"</td>"
										response.write"<td>" &veri("web") &"</td>"
										response.write"<td>" &veri("insta") &"</td>"
										response.write"<td>" &veri("sehir") &"</td>"
										
									response.write"</tr>"
									veri.movenext
								loop
							%>
						</table>
					</div>
				</main>
			
			</section>
			
		</div>
	</body>
</html>