
<html>
	<head>
		<title>AAL-Kişi Kayıt</title>
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
					<h2>Kişi Kayıt</h2>
					<div class="kaydol">
					<form action="kayit.asp" method="POST">
						<table id="kaydol1">
							<tr>
							<td>Adınız:</td><td><input type="text" name="isim" required></td>
							<td></td>
							<td>Kullanıcı Adı:</td><td><input type="text" name="kullaniciadi" required></td>
							</tr>
							<tr>
							<td>Soyadınız:</td><td><input type="text" name="soyisim"  required></td>
							<td></td>
							<td>Şifre:</td><td><input type="password" name="sifre" required></td>
							</tr>
							
							
							<tr>
							</tr>
							<tr>
							<td>Cinsiyetiniz:</td>
										<td> <input type="radio" name="cinsiyet" value="kadın" checked >Kadın
										 <input type="radio" name="cinsiyet" value="erkek">Erkek</td>
							<td></td>
							<td>E-mail:</td><td><input type="text" name="mail"  required></td>
							</tr>
							<tr>
							<td>Meslek:</td><td><input type="text" name="meslek"  required></td>
							<td></td>
							<td>Instagram ID:</td><td><input type="text" name="insta"></td>
							</tr>
							<tr>
							<td>Şehir:</td>
									<td><select name="sehirler">
										<option>Ankara</option>
										<option>Antalya</option>
										<option>Bolu</option>
										<option>Bursa</option>
										<option>Eskişehir</option>
										<option>Hatay</option>
										<option>İstanbul</option>
										<option>İzmir</option>
										<option>Karabük</option>
										<option>Zonguldak</option>
									</select></td>
							<td></td>
							<td>Web adresi:</td><td><input type="text" name="web"></td>
							</tr>
							<tr>
							<td>Adres:</td><td><input type="text" name="adres"></td>
							<td></td>
							<td>Telefon:</td><td><input type="text" name="telefon"></td>
							</tr>
							<tr>
							
							
							<td>Hobileriniz:</td>
										<td><input type="checkbox" name="hobi1" value="kitap_okumak">Kitap Okumak<br>
										<input type="checkbox" name="hobi2" value="film_izlemek">Film İzlemek<br>
										<input type="checkbox" name="hobi3" value="video/fotograf_düzenlemek">Video/Fotoğraf Düzenlemek</td>
							<td></td>
							<td></td>
							<td></td>
							</tr>
							<tr></tr>
							<tr></tr>
							<tr></tr>
							<tr></tr>
							<tr></tr>
							
							
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							
								<th><input type="submit" value="Kayıt Ol" style="width:110px; height:30px; margin:5px; cursor: pointer; background-color:#00FF7F; color:00008B; float:right;"></th>
							
							
						
					</form>
						
					</div>
					
					</section>
				</main>
			</section>
	
			
	</body>
</html>

