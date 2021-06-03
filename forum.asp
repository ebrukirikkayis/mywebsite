<%if session("isuser")="" then
	response.redirect"oturumac.asp"
end if
%>
<html>
	<head>
		<title>AAL-Forum</title>
		<meta name="description" content="AAL-Anasayfa, AAL, A Anadolu Lisesi">
		<link rel="stylesheet" href="style.css">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<link rel="shortcut icon" href="#">
	</head>
	<body>
		<div id="ustbaslık">AAL| 2018 Mezunları</div>
		
		<div id="sablon">
		
			<header>
				
				
			</header>
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
				
				<h2>Forum</h2>
					<div class="forum">
						<form action="forum.asp" method="post">
							Mesaj:<br><textarea name="mesaj" rows="5" cols="50"></textarea><br>
								  <input type="submit" value="Gönder" style="width:110px; height:30px; margin:5px; cursor: pointer; background-color:#00FF7F; color:00008B;">
						</form>
							<%
							set conn=Server.CreateObject("ADODB.Connection")
							conn.Open ("DRIVER={Microsoft Access Driver (*.mdb)};DBQ="& Server.MapPath("veritabanim.mdb"))
							set verial=Server.CreateObject("ADODB.Recordset")
							verial.Open"mesajlar", conn,1,3
							%>
                        <table id="t1">
							<tr>
								
								<td>Kullanıcı Adı</td>
								<td>Mesaj</td>
								<td>Tarih</td>
								<td>SIL</td>
							</tr>
							
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
								<%
								do while not verial.eof
									response.write"<tr>"
										response.write"<td>" &verial("kullanici") &"</td>"
										response.write"<td>" &verial("mesaj") &"</td>"
										response.write"<td>" &verial("tarih") &"</td>"
										response.write"<td><a href='forumsil.asp?sid="& verial("Kimlik")&"'><target='_blank'>SIL</a></td>"
									response.write"</tr>"
									verial.movenext
								loop
								
							%>
						</table>
					</div>
				</main>
			
			</section>
			
		</div>
	</body>
</html> 

<%
	if request.servervariables("REQUEST_METHOD")="POST"then
	msj=request.form("mesaj")
	kull=session("isuser")
	tarih=now()
	
	
	set conn=Server.CreateObject("ADODB.Connection")
	conn.Open ("DRIVER={Microsoft Access Driver (*.mdb)};DBQ="& Server.MapPath("veritabanim.mdb"))
	
	sql="INSERT INTO mesajlar(kullanici,mesaj,tarih) VALUES('"&kull&"', '"&msj&"', '"&tarih&"')"
	conn.Execute sql
	
	conn.Close
	set conn=Nothing
	response.redirect "forum.asp"
	end if
%>
