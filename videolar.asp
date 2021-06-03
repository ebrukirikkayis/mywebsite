<%if session("isuser")="" then
	response.redirect"oturumac.asp"
end if
%>
	<head>
		<title>AAL-Videolar Anasayfa</title>
		<meta name="description" content="AAL-Anasayfa, AAL,A Anadolu Lisesi">
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
					<h2>Videolar Anasayfası</h2>
					<div class="foto">
					<a target="_self" href="video1.asp"> <img src="image/nature1.jpg" alt="video" class="videos"> </a>
					<a target="_self" href="video2.asp"> <img src="image/forest.jpg" alt="video" class="videos"> </a>
					<a target="_self" href="video3.asp"> <img src="image/nature.jpg" alt="video" class="videos"> </a>
					</div>
				</main>
			
			</section>
			
		</div>
	</body>
</html> 