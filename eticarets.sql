-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 30 Eki 2017, 20:45:20
-- Sunucu sürümü: 5.7.17-log
-- PHP Sürümü: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `eticarets`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayar`
--

CREATE TABLE `ayar` (
  `ayar_id` int(11) NOT NULL,
  `ayar_logo` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_url` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_title` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_description` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_keywords` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_author` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_tel` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_gsm` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_faks` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_mail` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_ilce` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_il` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_adres` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_mesai` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_maps` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_analystic` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_zopim` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_facebook` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_twitter` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_google` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_youtube` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtphost` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtpuser` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtppassword` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtpport` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_bakim` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ayar`
--

INSERT INTO `ayar` (`ayar_id`, `ayar_logo`, `ayar_url`, `ayar_title`, `ayar_description`, `ayar_keywords`, `ayar_author`, `ayar_tel`, `ayar_gsm`, `ayar_faks`, `ayar_mail`, `ayar_ilce`, `ayar_il`, `ayar_adres`, `ayar_mesai`, `ayar_maps`, `ayar_analystic`, `ayar_zopim`, `ayar_facebook`, `ayar_twitter`, `ayar_google`, `ayar_youtube`, `ayar_smtphost`, `ayar_smtpuser`, `ayar_smtppassword`, `ayar_smtpport`, `ayar_bakim`) VALUES
(0, 'dimg/2735628481Udemy_logo.png', 'http://www.joyakademi.com', 'Joy Akademi E-Ticaret Scripti', 'Joy Akademi E-Ticaret Scripti yazım eğitimi projesi', 'eticaret, shopping, php, learning, student php', 'Joy Akademi', '0850 840 80 76', '0850 840 80 76', '0850 840 80 76', 'info@emrahyuksel.com.tr', 'İstanbul', 'Topkapı', 'Topkapı sarayı', '7 x 24 açık eticaret scripti', 'ayar_maps_api', 'ayar_analystic', 'https://v2.zopim.com/?5DyUgwL2c2nc43kG0j9udM8FLxy9XfWX', 'www.facebook.com', 'www.twitter.com', 'www.google.com', 'www.youtube.com', 'mail.emrahyuksel.com.tr', 'joyakademi@emrahyuksel.com.tr', 'password', '25', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `banka`
--

CREATE TABLE `banka` (
  `banka_id` int(11) NOT NULL,
  `banka_ad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `banka_iban` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `banka_hesapadsoyad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `banka_durum` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `banka`
--

INSERT INTO `banka` (`banka_id`, `banka_ad`, `banka_iban`, `banka_hesapadsoyad`, `banka_durum`) VALUES
(1, 'Garanti Bankası', 'TR98755656564564546', 'Emrah Yüksel', '1'),
(2, 'Yapı Kredi', 'TR45646545646545646465546', 'Emrah Yüksel', '1'),
(3, 'Vakıfbank', 'TR455645645646546465465', 'Emrah Yüksel', '1'),
(5, 'Ziraat Bankası', 'TR45646545646awrwerwerwer', 'Emrah Yüksel', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hakkimizda`
--

CREATE TABLE `hakkimizda` (
  `hakkimizda_id` int(11) NOT NULL,
  `hakkimizda_baslik` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_icerik` text COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_video` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_vizyon` varchar(500) COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_misyon` varchar(500) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `hakkimizda`
--

INSERT INTO `hakkimizda` (`hakkimizda_id`, `hakkimizda_baslik`, `hakkimizda_icerik`, `hakkimizda_video`, `hakkimizda_vizyon`, `hakkimizda_misyon`) VALUES
(0, 'Joy Akademi Eğitim Sürümü', '<p><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</strong> Phasellus viverra viverra eros, <img alt=\"\" src=\"http://eticaret.neyazilim.com/dimg/28481Udemy_logo.png\" style=\"float:right; height:60px; width:200px\" />eu laoreet leo iaculis vehicula. Nunc pretium volutpat neque, finibus fermentum neque pretium vel. In hac habitasse platea dictumst. Phasellus ipsum lacus, vehicula et fringilla a, dapibus ac mi. Nulla orci tortor, fringilla eget magna in, dictum consequat lectus. Sed tincidunt purus nec erat scelerisque pretium. Aliquam vehicula lacus vel lacus varius egestas.</p>\r\n\r\n<p>Vivamus eget euismod mi. Pellentesque et bibendum libero. Aliquam ullamcorper felis id nisl fermentum fringilla. Curabitur egestas condimentum lacus ut ornare. Donec vitae libero sagittis, pharetra massa ut, aliquam tellus. Proin luctus ex orci, nec pretium purus ultrices id. Nulla facilisi. Donec convallis pellentesque mauris. Suspendisse potenti. Ut viverra ex ante, vel tincidunt massa pellentesque et. Aenean rutrum ut ex facilisis vestibulum. Mauris est nibh, auctor quis efficitur et, pellentesque eu metus.</p>\r\n\r\n<p>Sed auctor maximus nunc ut cursus. Sed ultrices lectus eu turpis tincidunt, id dignissim nisl mattis. Sed in risus justo. Fusce et eleifend elit. Donec sit amet sapien accumsan, ornare diam ut, pellentesque dui. Maecenas ut molestie mauris. Curabitur imperdiet enim ut feugiat vulputate. Quisque dictum dolor a risus facilisis, eu bibendum dolor aliquam. Mauris vestibulum leo mauris, sit amet blandit erat suscipit nec.</p>\r\n\r\n<p>Nam facilisis sem vitae sem cursus, non ultrices dolor ullamcorper. Donec tortor massa, convallis eu tortor ornare, ornare sollicitudin tellus. Pellentesque quis interdum neque. Praesent elementum mauris sit amet nibh scelerisque bibendum. Maecenas aliquet metus lacinia elit bibendum volutpat. Vivamus eget augue eu quam consectetur venenatis. Proin rhoncus, tellus vitae tempor efficitur, eros orci maximus odio, eu rutrum sapien arcu non nisl. Donec egestas mauris eu nisl faucibus, ullamcorper dictum urna efficitur. Aliquam eu velit nisi. Etiam vitae nisi massa. Etiam a auctor felis.</p>\r\n\r\n<p>Vestibulum sem erat, venenatis at blandit in, mollis ut mauris. Donec vitae neque venenatis ante fermentum auctor vel at quam. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam ut auctor lectus, at egestas odio. Donec vestibulum nunc vitae porttitor scelerisque. Aenean non erat facilisis, finibus ex eu, commodo nulla. Pellentesque ornare, sem sit amet laoreet efficitur, sapien enim facilisis nibh, vel imperdiet nunc eros id libero. Suspendisse potenti. Nullam nec fringilla nibh. Duis sed ex a eros interdum faucibus. Duis viverra quis sem ut accumsan.</p>\r\n', 'gGXSHaER4h8', 'Joy Akademi ile ilgili hakkımızda vizyon içeriği burada yer alacağından buraya vizyon verisi girilecekitir.', 'Joy Akademi ile ilgili hakkımızda vizyon içeriği burada yer alacağından buraya vizyon verisi girilecekitir.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_ad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kategori_ust` int(2) NOT NULL,
  `kategori_seourl` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `kategori_sira` int(2) NOT NULL,
  `kategori_durum` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori_ad`, `kategori_ust`, `kategori_seourl`, `kategori_sira`, `kategori_durum`) VALUES
(11, 'Dizüstü Bilgisayar', 0, 'dizustu-bilgisayar', 1, '1'),
(12, 'Tablet', 0, 'tablet', 2, '1'),
(13, 'Cep Telefonu', 0, 'cep-telefonu', 3, '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici`
--

CREATE TABLE `kullanici` (
  `kullanici_id` int(11) NOT NULL,
  `kullanici_zaman` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `kullanici_resim` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_tc` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_ad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_mail` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_gsm` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_password` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_adsoyad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_adres` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_il` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_ilce` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_unvan` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_yetki` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_durum` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kullanici`
--

INSERT INTO `kullanici` (`kullanici_id`, `kullanici_zaman`, `kullanici_resim`, `kullanici_tc`, `kullanici_ad`, `kullanici_mail`, `kullanici_gsm`, `kullanici_password`, `kullanici_adsoyad`, `kullanici_adres`, `kullanici_il`, `kullanici_ilce`, `kullanici_unvan`, `kullanici_yetki`, `kullanici_durum`) VALUES
(147, '2017-07-08 15:21:45', '', '12345678910', '', 'info@emrahyuksel.com.tr', '08508408076', 'e10adc3949ba59abbe56e057f20f883e', 'Emrah Yüksel', '', '', '', '', '5', 1),
(151, '2017-07-16 17:37:27', '', '', '', 'info@joyakademi.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Murat Harun', '', '', '', '', '1', 1),
(152, '2017-07-16 17:40:24', '', '', '', 'info@muratharuns.com', '08508408076', 'e10adc3949ba59abbe56e057f20f883e', 'Murat Harun', '', '', '', '', '1', 1),
(153, '2017-07-31 11:31:57', '', '', '', 'user@user.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Test User', '', 'İstanbul', 'Çatalca', '', '1', 1),
(154, '2017-10-11 15:09:54', '', '', '', 'sadasd@asdasda.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'asdasda asdasdasd', '', '', '', '', '1', 1),
(155, '2017-10-11 15:10:44', '', '', '', 'ahmetmehmet@a.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'ahmetmehmet', '', '', '', '', '1', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_ust` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `menu_ad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `menu_detay` text COLLATE utf8_turkish_ci NOT NULL,
  `menu_url` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `menu_sira` int(2) NOT NULL,
  `menu_durum` enum('0','1') COLLATE utf8_turkish_ci NOT NULL,
  `menu_seourl` varchar(250) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_ust`, `menu_ad`, `menu_detay`, `menu_url`, `menu_sira`, `menu_durum`, `menu_seourl`) VALUES
(1, '0', 'Hakkımızda', '', 'hakkimizda', 1, '1', 'hakkimizda'),
(4, '0', 'Kategoriler', '', 'kategoriler', 3, '1', 'kategoriler'),
(11, '', 'Mesafeli satış sözleşmesi', '<p>MESAFELİ S&Ouml;ZLEŞMELER Y&Ouml;NETMELİĞİ</p>\r\n\r\n<p>BİRİNCİ B&Ouml;L&Uuml;M</p>\r\n\r\n<p>Ama&ccedil;, Kapsam, Dayanak ve Tanımlar</p>\r\n\r\n<p><strong>Ama&ccedil;</strong></p>\r\n\r\n<p><strong>MADDE 1 &ndash;</strong>&nbsp;(1) Bu Y&ouml;netmeliğin amacı, mesafeli s&ouml;zleşmelere ilişkin uygulama usul ve esaslarını d&uuml;zenlemektir.</p>\r\n\r\n<p><strong>Kapsam</strong></p>\r\n\r\n<p><strong>MADDE 2 &ndash;</strong>&nbsp;(1) Bu Y&ouml;netmelik, mesafeli s&ouml;zleşmelere uygulanır.</p>\r\n\r\n<p>(2) Bu Y&ouml;netmelik h&uuml;k&uuml;mleri;</p>\r\n\r\n<p>a) Finansal hizmetler,</p>\r\n\r\n<p>b) Otomatik makineler aracılığıyla yapılan satışlar,</p>\r\n\r\n<p>c) Halka a&ccedil;ık telefon vasıtasıyla telekom&uuml;nikasyon operat&ouml;rleriyle bu telefonun kullanımı,</p>\r\n\r\n<p>&ccedil;) Bahis, &ccedil;ekiliş, piyango ve benzeri şans oyunlarına ilişkin hizmetler,</p>\r\n\r\n<p>d) Taşınmaz malların veya bu mallara ilişkin hakların oluşumu, devri veya kazanımı,</p>\r\n\r\n<p>e) Konut kiralama,</p>\r\n\r\n<p>f) Paket turlar,</p>\r\n\r\n<p>g) Devre m&uuml;lk, devre tatil, uzun s&uuml;reli tatil hizmeti ve bunların yeniden satımı veya değişimi,</p>\r\n\r\n<p>ğ) Yiyecek ve i&ccedil;ecekler gibi g&uuml;nl&uuml;k t&uuml;ketim maddelerinin, satıcının d&uuml;zenli teslimatları &ccedil;er&ccedil;evesinde t&uuml;keticinin meskenine veya işyerine g&ouml;t&uuml;r&uuml;lmesi,</p>\r\n\r\n<p>h) 5 inci maddenin birinci fıkrasının (a), (b) ve (d) bentlerindeki bilgi verme y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml; ile 18 inci ve 19 uncu maddelerde yer alan y&uuml;k&uuml;ml&uuml;l&uuml;kler saklı kalmak koşuluyla yolcu taşıma hizmetleri,</p>\r\n\r\n<p>ı) Malların montaj, bakım ve onarımı,</p>\r\n\r\n<p>i) Bakımevi hizmetleri, &ccedil;ocuk, yaşlı ya da hasta bakımı gibi ailelerin ve kişilerin desteklenmesine y&ouml;nelik sosyal hizmetler</p>\r\n\r\n<p>ile&nbsp;ilgili s&ouml;zleşmelere uygulanmaz.</p>\r\n\r\n<p><strong>Dayanak</strong></p>\r\n\r\n<p><strong>MADDE 3 &ndash;</strong>&nbsp;(1) Bu Y&ouml;netmelik,&nbsp;7/11/2013&nbsp;tarihli ve 6502 sayılı T&uuml;keticinin Korunması Hakkında Kanunun 48 inci ve 84 &uuml;nc&uuml; maddelerine dayanılarak hazırlanmıştır.</p>\r\n\r\n<p><strong>Tanımlar</strong></p>\r\n\r\n<p><strong>MADDE 4 &ndash;</strong>&nbsp;(1) Bu Y&ouml;netmeliğin uygulanmasında;</p>\r\n\r\n<p>a) Dijital i&ccedil;erik: Bilgisayar programı, uygulama, oyun, m&uuml;zik, video ve metin gibi dijital şekilde sunulan her t&uuml;rl&uuml; veriyi,</p>\r\n\r\n<p>b) Hizmet: Bir &uuml;cret veya menfaat karşılığında yapılan ya da yapılması taahh&uuml;t edilen mal sağlama dışındaki her t&uuml;rl&uuml; t&uuml;ketici işleminin konusunu,</p>\r\n\r\n<p>c) Kalıcı veri saklayıcısı: T&uuml;keticinin g&ouml;nderdiği veya kendisine g&ouml;nderilen bilgiyi, bu bilginin amacına uygun olarak makul bir s&uuml;re incelemesine elverecek şekilde kaydedilmesini ve değiştirilmeden kopyalanmasını sağlayan ve bu bilgiye aynen ulaşılmasına&nbsp;imkan&nbsp;veren kısa mesaj, elektronik posta, internet, disk, CD, DVD, hafıza kartı ve benzeri her t&uuml;rl&uuml; ara&ccedil; veya ortamı,</p>\r\n\r\n<p>&ccedil;) Kanun: 6502 sayılı T&uuml;keticinin Korunması Hakkında Kanunu,</p>\r\n\r\n<p>d) Mal: Alışverişe konu olan; taşınır eşya, konut veya tatil ama&ccedil;lı taşınmaz mallar ile elektronik ortamda kullanılmak &uuml;zere hazırlanan yazılım, ses, g&ouml;r&uuml;nt&uuml; ve benzeri her t&uuml;rl&uuml; gayri maddi malları,</p>\r\n\r\n<p>e) Mesafeli s&ouml;zleşme: Satıcı veya sağlayıcı ile t&uuml;keticinin eş zamanlı fiziksel varlığı olmaksızın, mal veya hizmetlerin uzaktan pazarlanmasına y&ouml;nelik olarak oluşturulmuş bir sistem &ccedil;er&ccedil;evesinde, taraflar arasında s&ouml;zleşmenin kurulduğu ana kadar ve kurulduğu an da&nbsp;dahil&nbsp;olmak &uuml;zere uzaktan iletişim ara&ccedil;larının kullanılması suretiyle kurulan s&ouml;zleşmeleri,</p>\r\n\r\n<p>f) Sağlayıcı: Kamu t&uuml;zel kişileri de&nbsp;dahil&nbsp;olmak &uuml;zere ticari veya mesleki ama&ccedil;larla t&uuml;keticiye hizmet sunan ya da hizmet sunanın adına ya da hesabına hareket eden ger&ccedil;ek veya t&uuml;zel kişiyi,</p>\r\n\r\n<p>g) Satıcı: Kamu t&uuml;zel kişileri de&nbsp;dahil&nbsp;olmak &uuml;zere ticari veya mesleki ama&ccedil;larla t&uuml;keticiye mal sunan ya da mal sunanın adına ya da hesabına hareket eden ger&ccedil;ek veya t&uuml;zel kişiyi,</p>\r\n\r\n<p>ğ) T&uuml;ketici: Ticari veya mesleki olmayan ama&ccedil;larla hareket eden ger&ccedil;ek veya t&uuml;zel kişiyi,</p>\r\n\r\n<p>h) Uzaktan iletişim aracı: Mektup, katalog, telefon, faks, radyo, televizyon, elektronik posta mesajı, kısa mesaj, internet gibi fiziksel olarak karşı karşıya gelinmeksizin s&ouml;zleşme kurulmasına&nbsp;imkan&nbsp;veren her t&uuml;rl&uuml; ara&ccedil; veya ortamı,</p>\r\n\r\n<p>ı) Yan s&ouml;zleşme: Bir mesafeli s&ouml;zleşme ile ilişkili olarak satıcı, sağlayıcı ya da &uuml;&ccedil;&uuml;nc&uuml; bir kişi tarafından s&ouml;zleşme konusu mal ya da hizmete ilave olarak t&uuml;keticiye sağlanan mal veya hizmete ilişkin s&ouml;zleşmeyi</p>\r\n\r\n<p>ifade&nbsp;eder.</p>\r\n\r\n<p>İKİNCİ B&Ouml;L&Uuml;M</p>\r\n\r\n<p>&Ouml;n Bilgilendirme Y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml;</p>\r\n\r\n<p><strong>&Ouml;n bilgilendirme</strong></p>\r\n\r\n<p><strong>MADDE 5 &ndash;</strong>&nbsp;(1) T&uuml;ketici, mesafeli s&ouml;zleşmenin kurulmasından ya da buna karşılık gelen herhangi bir teklifi kabul etmeden &ouml;nce, aşağıdaki hususların tamamını i&ccedil;erecek şekilde satıcı veya sağlayıcı tarafından bilgilendirilmek zorundadır.</p>\r\n\r\n<p>a) S&ouml;zleşme konusu mal veya hizmetin temel nitelikleri,</p>\r\n\r\n<p>b) Satıcı veya sağlayıcının adı veya unvanı, varsa MERSİS numarası,</p>\r\n\r\n<p>c) T&uuml;keticinin satıcı veya sağlayıcı ile hızlı bir şekilde irtibat kurmasına&nbsp;imkan&nbsp;veren, satıcı veya sağlayıcının a&ccedil;ık adresi, telefon numarası ve benzeri iletişim bilgileri ile varsa satıcı veya sağlayıcının adına ya da hesabına hareket edenin kimliği ve adresi,</p>\r\n\r\n<p>&ccedil;) Satıcı veya sağlayıcının t&uuml;keticinin&nbsp;şikayetlerini&nbsp;iletmesi i&ccedil;in (c) bendinde belirtilenden farklı iletişim bilgileri var ise, bunlara ilişkin bilgi,</p>\r\n\r\n<p>d) Mal veya hizmetin t&uuml;m vergiler&nbsp;dahil&nbsp;toplam fiyatı, niteliği itibariyle &ouml;nceden hesaplanamıyorsa fiyatın hesaplanma usul&uuml;, varsa t&uuml;m nakliye, teslim ve benzeri ek masraflar ile bunların &ouml;nceden hesaplanamaması halinde ek masrafların &ouml;denebileceği bilgisi,</p>\r\n\r\n<p>e) S&ouml;zleşmenin kurulması aşamasında uzaktan iletişim aracının kullanım bedelinin olağan &uuml;cret tarifesi &uuml;zerinden hesaplanamadığı durumlarda, t&uuml;keticilere y&uuml;klenen ilave maliyet,</p>\r\n\r\n<p>f) &Ouml;deme, teslimat, ifaya ilişkin bilgiler ile varsa bunlara ilişkin taahh&uuml;tler ve satıcı veya sağlayıcının&nbsp;şikayetlere&nbsp;ilişkin &ccedil;&ouml;z&uuml;m y&ouml;ntemleri,</p>\r\n\r\n<p>g) Cayma hakkının olduğu durumlarda, bu hakkın kullanılma şartları, s&uuml;resi, usul&uuml; ve satıcının iade i&ccedil;in &ouml;ng&ouml;rd&uuml;ğ&uuml; taşıyıcıya ilişkin bilgiler,</p>\r\n\r\n<p>ğ) Cayma bildiriminin yapılacağı a&ccedil;ık adres, faks numarası veya elektronik posta bilgileri,</p>\r\n\r\n<p>h) 15 inci madde uyarınca cayma hakkının kullanılamadığı durumlarda, t&uuml;keticinin cayma hakkından faydalanamayacağına ya da hangi koşullarda cayma hakkını kaybedeceğine ilişkin bilgi,</p>\r\n\r\n<p>ı) Satıcı veya sağlayıcının talebi &uuml;zerine, varsa t&uuml;ketici tarafından &ouml;denmesi veya sağlanması gereken depozitolar ya da diğer mali teminatlar ve bunlara ilişkin şartlar,</p>\r\n\r\n<p>i) Varsa dijital i&ccedil;eriklerin işlevselliğini etkileyebilecek teknik koruma &ouml;nlemleri,</p>\r\n\r\n<p>j) Satıcı veya sağlayıcının bildiği ya da makul olarak bilmesinin beklendiği, dijital i&ccedil;eriğin hangi donanım ya da yazılımla birlikte &ccedil;alışabileceğine ilişkin bilgi,</p>\r\n\r\n<p>k) T&uuml;keticilerin uyuşmazlık konusundaki başvurularını T&uuml;ketici Mahkemesine veya T&uuml;ketici Hakem Heyetine yapabileceklerine dair bilgi.</p>\r\n\r\n<p>(2) Birinci fıkrada belirtilen bilgiler, mesafeli s&ouml;zleşmenin ayrılmaz bir par&ccedil;asıdır ve taraflar aksini a&ccedil;ık&ccedil;a kararlaştırmadık&ccedil;a bu bilgiler değiştirilemez.</p>\r\n\r\n<p>(3) Satıcı veya sağlayıcı, birinci fıkranın (d) bendinde yer alan ek masraflara ilişkin bilgilendirme y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml;n&uuml; yerine getirmezse, t&uuml;ketici bunları karşılamakla y&uuml;k&uuml;ml&uuml; değildir.</p>\r\n\r\n<p>(4) Birinci fıkranın (d) bendinde yer alan toplam fiyatın, belirsiz s&uuml;reli s&ouml;zleşmelerde veya belirli s&uuml;reli abonelik s&ouml;zleşmelerinde, her faturalama d&ouml;nemi bazında toplam masrafları i&ccedil;ermesi zorunludur.</p>\r\n\r\n<p>(5) A&ccedil;ık artırma veya eksiltme yoluyla kurulan s&ouml;zleşmelerde, birinci fıkranın (b), (c) ve (&ccedil;) bentlerinde yer alan bilgilerin yerine a&ccedil;ık artırmayı yapan ile ilgili bilgilere yer verilebilir.</p>\r\n\r\n<p>(6) &Ouml;n bilgilendirme yapıldığına ilişkin ispat y&uuml;k&uuml; satıcı veya sağlayıcıya aittir.</p>\r\n\r\n<p><strong>&Ouml;n bilgilendirme y&ouml;ntemi</strong></p>\r\n\r\n<p><strong>MADDE 6 &ndash;</strong>&nbsp;(1) T&uuml;ketici, 5 inci maddenin birinci fıkrasında belirtilen t&uuml;m hususlarda, kullanılan uzaktan iletişim aracına uygun olarak en az on iki punto b&uuml;y&uuml;kl&uuml;ğ&uuml;nde, anlaşılabilir bir dilde, a&ccedil;ık, sade ve okunabilir bir şekilde satıcı veya sağlayıcı tarafından yazılı olarak veya kalıcı veri saklayıcısı ile bilgilendirilmek zorundadır.</p>\r\n\r\n<p>(2) Mesafeli s&ouml;zleşmenin internet yoluyla kurulması halinde, satıcı veya sağlayıcı;</p>\r\n\r\n<p>a) 5 inci maddenin birinci fıkrasında yer alan bilgilendirme y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml; saklı kalmak kaydıyla, aynı fıkranın (a), (d), (g) ve (h) bentlerinde yer alan bilgileri bir b&uuml;t&uuml;n olarak, t&uuml;keticinin &ouml;deme y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml; altına girmesinden hemen &ouml;nce a&ccedil;ık bir şekilde ayrıca g&ouml;stermek,</p>\r\n\r\n<p>b) Herhangi bir g&ouml;nderim kısıtlamasının uygulanıp uygulanmadığını ve hangi &ouml;deme ara&ccedil;larının kabul edildiğini, en ge&ccedil; t&uuml;ketici siparişini vermeden &ouml;nce, a&ccedil;ık ve anlaşılabilir bir şekilde belirtmek</p>\r\n\r\n<p>zorundadır.</p>\r\n\r\n<p>(3) Mesafeli s&ouml;zleşmenin sesli iletişim yoluyla kurulması halinde, satıcı veya sağlayıcı 5 inci maddenin birinci fıkrasının (a), (d), (g) ve (h) bentlerinde yer alan hususlarda, t&uuml;keticiyi sipariş vermeden hemen &ouml;nce a&ccedil;ık ve anlaşılır bir şekilde s&ouml;z konusu ortamda bilgilendirmek ve 5 inci maddenin birinci fıkrasında yer alan bilgilerin tamamını en ge&ccedil; mal teslimine veya hizmet ifasına kadar yazılı olarak g&ouml;ndermek zorundadır.</p>\r\n\r\n<p>(4) Siparişe ilişkin bilgilerin sınırlı alanda ya da zamanda sunulduğu bir ortam yoluyla mesafeli s&ouml;zleşmenin kurulması halinde, satıcı veya sağlayıcı 5 inci maddenin birinci fıkrasının (a), (b), (d), (g) ve (h) bentlerinde yer alan hususlarda, t&uuml;keticiyi sipariş vermeden hemen &ouml;nce a&ccedil;ık ve anlaşılabilir bir şekilde s&ouml;z konusu ortamda bilgilendirmek ve 5 inci maddenin birinci fıkrasında yer alan bilgilerin tamamını en ge&ccedil; mal teslimine veya hizmet ifasına kadar yazılı olarak g&ouml;ndermek zorundadır.</p>\r\n\r\n<p>(5) &Uuml;&ccedil;&uuml;nc&uuml; ve d&ouml;rd&uuml;nc&uuml; fıkralarda belirtilen y&ouml;ntemlerle kurulan ve anında ifa edilen hizmet satışlarına ilişkin s&ouml;zleşmelerde t&uuml;keticinin, sipariş vermeden hemen &ouml;nce s&ouml;z konusu ortamda 5 inci maddenin birinci fıkrasının sadece (a), (b), (d) ve (h) bentlerinde yer alan hususlarda a&ccedil;ık ve anlaşılır bir şekilde bilgilendirilmesi yeterlidir.</p>\r\n\r\n<p><strong>&Ouml;n bilgilerin teyidi</strong></p>\r\n\r\n<p><strong>MADDE 7 &ndash;</strong>&nbsp;(1) Satıcı veya sağlayıcı, t&uuml;keticinin 6&nbsp;ncı&nbsp;maddede belirtilen y&ouml;ntemlerle &ouml;n bilgileri edindiğini kullanılan uzaktan iletişim aracına uygun olarak teyit etmesini sağlamak zorundadır. Aksi halde s&ouml;zleşme kurulmamış sayılır.</p>\r\n\r\n<p><strong>&Ouml;n bilgilendirmeye ilişkin diğer y&uuml;k&uuml;ml&uuml;l&uuml;kler</strong></p>\r\n\r\n<p><strong>MADDE 8 &ndash;</strong>&nbsp;(1) Satıcı veya sağlayıcı, t&uuml;ketici siparişi onaylamadan hemen &ouml;nce, verilen siparişin &ouml;deme y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml; anlamına geldiği hususunda t&uuml;keticiyi a&ccedil;ık ve anlaşılır bir şekilde bilgilendirmek zorundadır. Aksi halde t&uuml;ketici siparişi ile bağlı değildir.</p>\r\n\r\n<p>(2) T&uuml;keticinin mesafeli s&ouml;zleşme kurulması amacıyla satıcı veya sağlayıcı tarafından telefonla aranması durumunda, her g&ouml;r&uuml;şmenin başında satıcı veya sağlayıcı kimliğini, eğer bir başkası adına veya hesabına arıyorsa bu kişinin kimliğini ve g&ouml;r&uuml;şmenin ticari amacını a&ccedil;ıklamalıdır.</p>\r\n\r\n<p>&Uuml;&Ccedil;&Uuml;NC&Uuml; B&Ouml;L&Uuml;M</p>\r\n\r\n<p>Cayma Hakkının Kullanımı ve Tarafların Y&uuml;k&uuml;ml&uuml;l&uuml;kleri</p>\r\n\r\n<p><strong>Cayma hakkı</strong></p>\r\n\r\n<p><strong>MADDE 9 &ndash;</strong>&nbsp;(1) T&uuml;ketici, on d&ouml;rt g&uuml;n i&ccedil;inde herhangi bir gerek&ccedil;e g&ouml;stermeksizin ve cezai şart &ouml;demeksizin s&ouml;zleşmeden cayma hakkına sahiptir.</p>\r\n\r\n<p>(2) Cayma hakkı s&uuml;resi, hizmet ifasına ilişkin s&ouml;zleşmelerde s&ouml;zleşmenin kurulduğu g&uuml;n; mal teslimine ilişkin s&ouml;zleşmelerde ise t&uuml;keticinin veya t&uuml;ketici tarafından belirlenen &uuml;&ccedil;&uuml;nc&uuml; kişinin malı teslim aldığı g&uuml;n başlar. Ancak t&uuml;ketici, s&ouml;zleşmenin kurulmasından malın teslimine kadar olan s&uuml;re i&ccedil;inde de cayma hakkını kullanabilir.</p>\r\n\r\n<p>(3) Cayma hakkı s&uuml;resinin belirlenmesinde;</p>\r\n\r\n<p>a) Tek sipariş konusu olup ayrı&nbsp;ayrı&nbsp;teslim edilen mallarda, t&uuml;keticinin veya t&uuml;ketici tarafından belirlenen &uuml;&ccedil;&uuml;nc&uuml; kişinin son malı teslim aldığı g&uuml;n,</p>\r\n\r\n<p>b) Birden fazla par&ccedil;adan oluşan mallarda, t&uuml;keticinin veya t&uuml;ketici tarafından belirlenen &uuml;&ccedil;&uuml;nc&uuml; kişinin son par&ccedil;ayı teslim aldığı g&uuml;n,</p>\r\n\r\n<p>c) Belirli bir s&uuml;re boyunca malın d&uuml;zenli tesliminin yapıldığı s&ouml;zleşmelerde, t&uuml;keticinin veya t&uuml;ketici tarafından belirlenen &uuml;&ccedil;&uuml;nc&uuml; kişinin ilk malı teslim aldığı g&uuml;n</p>\r\n\r\n<p>esas&nbsp;alınır.</p>\r\n\r\n<p>(4) Malın satıcı tarafından taşıyıcıya teslimi, t&uuml;keticiye yapılan teslim olarak kabul edilmez.</p>\r\n\r\n<p>(5) Mal teslimi ile hizmet ifasının birlikte yapıldığı s&ouml;zleşmelerde, mal teslimine ilişkin cayma hakkı h&uuml;k&uuml;mleri uygulanır.</p>\r\n\r\n<p><strong>Eksik bilgilendirme</strong></p>\r\n\r\n<p><strong>MADDE 10 &ndash;</strong>&nbsp;(1) Satıcı veya sağlayıcı, cayma hakkı konusunda t&uuml;keticinin bilgilendirildiğini ispat etmekle y&uuml;k&uuml;ml&uuml;d&uuml;r. T&uuml;ketici, cayma hakkı konusunda gerektiği şekilde bilgilendirilmezse, cayma hakkını kullanmak i&ccedil;in on d&ouml;rt g&uuml;nl&uuml;k s&uuml;reyle bağlı değildir. Bu s&uuml;re her hal&uuml;karda cayma s&uuml;resinin bittiği tarihten itibaren bir yıl sonra sona erer.</p>\r\n\r\n<p>(2) Cayma hakkı konusunda gerektiği şekilde bilgilendirmenin bir yıllık s&uuml;re i&ccedil;inde yapılması halinde, on d&ouml;rt g&uuml;nl&uuml;k cayma hakkı s&uuml;resi, bu bilgilendirmenin gereği gibi yapıldığı g&uuml;nden itibaren işlemeye başlar.</p>\r\n\r\n<p><strong>Cayma hakkının kullanımı</strong></p>\r\n\r\n<p><strong>MADDE 11 &ndash;</strong>&nbsp;(1) Cayma hakkının kullanıldığına dair bildirimin cayma hakkı s&uuml;resi dolmadan, yazılı olarak veya kalıcı veri saklayıcısı ile satıcı veya sağlayıcıya y&ouml;neltilmesi yeterlidir.</p>\r\n\r\n<p>(2) Cayma hakkının kullanılmasında t&uuml;ketici,&nbsp;EK&rsquo;te&nbsp;yer alan formu kullanabileceği gibi cayma kararını bildiren a&ccedil;ık bir beyanda da bulunabilir. Satıcı veya sağlayıcı, t&uuml;keticinin bu formu doldurabilmesi veya cayma beyanını g&ouml;nderebilmesi i&ccedil;in internet sitesi &uuml;zerinden se&ccedil;enek de sunabilir.&nbsp;&nbsp;İnternet sitesi &uuml;zerinden t&uuml;keticilere cayma hakkı sunulması durumunda satıcı veya sağlayıcı, t&uuml;keticilerin iletmiş olduğu cayma taleplerinin kendilerine ulaştığına ilişkin teyit bilgisini t&uuml;keticiye derhal iletmek zorundadır.</p>\r\n\r\n<p>(3) Sesli iletişim yoluyla yapılan satışlarda, satıcı veya sağlayıcı,&nbsp;EK&rsquo;te&nbsp;yer alan formu en ge&ccedil; mal teslimine veya hizmet ifasına kadar t&uuml;keticiye g&ouml;ndermek zorundadır. T&uuml;ketici bu t&uuml;r satışlarda da cayma hakkını kullanmak i&ccedil;in bu formu kullanabileceği gibi, ikinci fıkradaki y&ouml;ntemleri de kullanabilir.</p>\r\n\r\n<p>(4) Bu maddede ge&ccedil;en cayma hakkının kullanımına ilişkin ispat y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml; t&uuml;keticiye aittir.</p>\r\n\r\n<p><strong>Satıcı veya sağlayıcının y&uuml;k&uuml;ml&uuml;l&uuml;kleri</strong></p>\r\n\r\n<p><strong>MADDE 12 &ndash;</strong>&nbsp;(1) Satıcı veya sağlayıcı, t&uuml;keticinin cayma hakkını kullandığına ilişkin bildirimin kendisine ulaştığı tarihten itibaren on d&ouml;rt g&uuml;n i&ccedil;inde, varsa malın t&uuml;keticiye teslim masrafları da&nbsp;dahil&nbsp;olmak &uuml;zere tahsil edilen t&uuml;m &ouml;demeleri iade etmekle y&uuml;k&uuml;ml&uuml;d&uuml;r.</p>\r\n\r\n<p>(2) Satıcı veya sağlayıcı, birinci fıkrada belirtilen t&uuml;m geri &ouml;demeleri, t&uuml;keticinin satın alırken kullandığı &ouml;deme aracına uygun bir şekilde ve t&uuml;keticiye herhangi bir masraf veya y&uuml;k&uuml;ml&uuml;l&uuml;k getirmeden tek seferde yapmak zorundadır.</p>\r\n\r\n<p>(3) Cayma hakkının kullanımında, 5 inci maddenin birinci fıkrasının (g) bendi kapsamında, satıcının iade i&ccedil;in belirttiği taşıyıcı aracılığıyla malın geri g&ouml;nderilmesi halinde, t&uuml;ketici iadeye ilişkin masraflardan sorumlu tutulamaz. Satıcının &ouml;n bilgilendirmede iade i&ccedil;in herhangi bir taşıyıcıyı belirtmediği durumda ise, t&uuml;keticiden iade masrafına ilişkin herhangi bir bedel talep edilemez. İade i&ccedil;in &ouml;n bilgilendirmede belirtilen taşıyıcının, t&uuml;keticinin bulunduğu yerde şubesinin olmaması durumunda satıcı, ilave hi&ccedil;bir masraf talep etmeksizin iade edilmek istenen malın t&uuml;keticiden alınmasını sağlamakla y&uuml;k&uuml;ml&uuml;d&uuml;r.</p>\r\n\r\n<p><strong>T&uuml;keticinin y&uuml;k&uuml;ml&uuml;l&uuml;kleri</strong></p>\r\n\r\n<p><strong>MADDE 13 &ndash;</strong>&nbsp;(1) Satıcı veya sağlayıcı malı kendisinin geri alacağına dair bir teklifte bulunmadık&ccedil;a, t&uuml;ketici cayma hakkını kullandığına ilişkin bildirimi y&ouml;nelttiği tarihten itibaren on g&uuml;n i&ccedil;inde malı satıcı veya sağlayıcıya ya da yetkilendirmiş olduğu kişiye geri g&ouml;ndermek zorundadır.</p>\r\n\r\n<p>(2) T&uuml;ketici, cayma s&uuml;resi i&ccedil;inde malı, işleyişine, teknik &ouml;zelliklerine ve kullanım talimatlarına uygun bir şekilde kullandığı takdirde meydana gelen değişiklik ve bozulmalardan sorumlu değildir.</p>\r\n\r\n<p><strong>Cayma hakkının kullanımının yan s&ouml;zleşmelere etkisi</strong></p>\r\n\r\n<p><strong>MADDE 14 &ndash;</strong>&nbsp;(1) Kanunun 30 uncu maddesi h&uuml;k&uuml;mleri saklı kalmak koşuluyla, t&uuml;keticinin cayma hakkını kullanması durumunda yan s&ouml;zleşmeler de kendiliğinden sona erer. Bu durumda t&uuml;ketici, 13 &uuml;nc&uuml; maddenin ikinci fıkrasında belirtilen haller dışında herhangi bir masraf, tazminat veya cezai şart &ouml;demekle y&uuml;k&uuml;ml&uuml; değildir.</p>\r\n\r\n<p>(2) Satıcı veya sağlayıcı, t&uuml;keticinin cayma hakkını kullandığını yan s&ouml;zleşmenin tarafı olan &uuml;&ccedil;&uuml;nc&uuml; kişiye derhal bildirmelidir.</p>\r\n\r\n<p><strong>Cayma hakkının istisnaları</strong></p>\r\n\r\n<p><strong>MADDE 15 &ndash;</strong>&nbsp;(1) Taraflarca aksi kararlaştırılmadık&ccedil;a, t&uuml;ketici aşağıdaki s&ouml;zleşmelerde cayma hakkını kullanamaz:</p>\r\n\r\n<p>a) Fiyatı finansal piyasalardaki dalgalanmalara bağlı olarak değişen ve satıcı veya sağlayıcının kontrol&uuml;nde olmayan mal veya hizmetlere ilişkin s&ouml;zleşmeler.</p>\r\n\r\n<p>b) T&uuml;keticinin istekleri veya kişisel ihtiya&ccedil;ları doğrultusunda hazırlanan mallara ilişkin s&ouml;zleşmeler.</p>\r\n\r\n<p>c) &Ccedil;abuk bozulabilen veya son kullanma tarihi ge&ccedil;ebilecek malların teslimine ilişkin s&ouml;zleşmeler.</p>\r\n\r\n<p>&ccedil;) Tesliminden sonra ambalaj, bant, m&uuml;h&uuml;r, paket gibi koruyucu unsurları a&ccedil;ılmış olan mallardan; iadesi sağlık ve&nbsp;hijyen&nbsp;a&ccedil;ısından uygun olmayanların teslimine ilişkin s&ouml;zleşmeler.</p>\r\n\r\n<p>d) Tesliminden sonra başka &uuml;r&uuml;nlerle karışan ve doğası gereği ayrıştırılması m&uuml;mk&uuml;n olmayan mallara ilişkin s&ouml;zleşmeler.</p>\r\n\r\n<p>e) Malın tesliminden sonra ambalaj, bant, m&uuml;h&uuml;r, paket gibi koruyucu unsurları a&ccedil;ılmış olması halinde maddi ortamda sunulan kitap, dijital i&ccedil;erik ve bilgisayar sarf malzemelerine ilişkin s&ouml;zleşmeler.</p>\r\n\r\n<p>f) Abonelik s&ouml;zleşmesi kapsamında sağlananlar dışında, gazete ve dergi gibi s&uuml;reli yayınların teslimine ilişkin s&ouml;zleşmeler.</p>\r\n\r\n<p>g) Belirli bir tarihte veya d&ouml;nemde yapılması gereken, konaklama, eşya taşıma, araba kiralama, yiyecek-i&ccedil;ecek tedariki ve eğlence veya dinlenme amacıyla yapılan boş zamanın değerlendirilmesine ilişkin s&ouml;zleşmeler.</p>\r\n\r\n<p>ğ) Elektronik ortamda anında ifa edilen hizmetler veya t&uuml;keticiye anında teslim edilen&nbsp;gayrimaddi&nbsp;mallara ilişkin s&ouml;zleşmeler.</p>\r\n\r\n<p>h) Cayma hakkı s&uuml;resi sona ermeden &ouml;nce, t&uuml;keticinin onayı ile ifasına başlanan hizmetlere ilişkin s&ouml;zleşmeler.</p>\r\n\r\n<p>D&Ouml;RD&Uuml;NC&Uuml; B&Ouml;L&Uuml;M</p>\r\n\r\n<p>Diğer H&uuml;k&uuml;mler</p>\r\n\r\n<p><strong>S&ouml;zleşmenin ifası ve teslimat</strong></p>\r\n\r\n<p><strong>MADDE 16 &ndash;</strong>&nbsp;(1) Satıcı veya sağlayıcı, t&uuml;keticinin siparişinin kendisine ulaştığı tarihten itibaren taahh&uuml;t ettiği s&uuml;re i&ccedil;inde edimini yerine getirmek zorundadır. Mal satışlarında bu s&uuml;re her hal&uuml;karda otuz g&uuml;n&uuml; ge&ccedil;emez.</p>\r\n\r\n<p>(2) Satıcı veya sağlayıcının birinci fıkrada yer alan y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml;n&uuml; yerine getirmemesi durumunda, t&uuml;ketici s&ouml;zleşmeyi feshedebilir.</p>\r\n\r\n<p>(3) S&ouml;zleşmenin feshi durumunda, satıcı veya sağlayıcı, varsa teslimat masrafları da d&acirc;hil olmak &uuml;zere tahsil edilen t&uuml;m &ouml;demeleri fesih bildiriminin kendisine ulaştığı tarihten itibaren on d&ouml;rt g&uuml;n i&ccedil;inde t&uuml;keticiye&nbsp;4/12/1984tarihli ve 3095 sayılı Kanuni Faiz ve Temerr&uuml;t Faizine İlişkin Kanunun 1 inci maddesine g&ouml;re belirlenen kanuni faiziyle birlikte geri &ouml;demek ve varsa t&uuml;keticiyi bor&ccedil; altına sokan t&uuml;m kıymetli evrak ve benzeri belgeleri iade etmek zorundadır.</p>\r\n\r\n<p>(4) Sipariş konusu mal ya da hizmet ediminin yerine getirilmesinin&nbsp;imkansızlaştığı&nbsp;hallerde satıcı veya sağlayıcının bu durumu &ouml;ğrendiği tarihten itibaren &uuml;&ccedil; g&uuml;n i&ccedil;inde t&uuml;keticiye yazılı olarak veya kalıcı veri saklayıcısı ile bildirmesi ve varsa teslimat masrafları da d&acirc;hil olmak &uuml;zere tahsil edilen t&uuml;m &ouml;demeleri bildirim tarihinden itibaren en ge&ccedil; on d&ouml;rt g&uuml;n i&ccedil;inde iade etmesi zorunludur. Malın stokta bulunmaması durumu, mal ediminin yerine getirilmesinin imk&acirc;nsızlaşması olarak kabul edilmez.</p>\r\n\r\n<p><strong>Zarardan sorumluluk</strong></p>\r\n\r\n<p><strong>MADDE 17 &ndash;</strong>&nbsp;(1) Satıcı, malın t&uuml;ketici ya da t&uuml;keticinin taşıyıcı dışında belirleyeceği &uuml;&ccedil;&uuml;nc&uuml; bir kişiye teslimine kadar oluşan kayıp ve hasarlardan sorumludur.</p>\r\n\r\n<p>(2) T&uuml;keticinin, satıcının belirlediği taşıyıcı dışında başka bir taşıyıcı ile malın g&ouml;nderilmesini talep etmesi durumunda, malın ilgili taşıyıcıya tesliminden itibaren oluşabilecek kayıp ya da hasardan satıcı sorumlu değildir.</p>\r\n\r\n<p><strong>Telefon kullanım &uuml;creti</strong></p>\r\n\r\n<p><strong>MADDE 18 &ndash;</strong>&nbsp;(1) Kurulmuş olan s&ouml;zleşmeye ilişkin olarak t&uuml;keticilerin iletişime ge&ccedil;ebilmesi i&ccedil;in satıcı veya sağlayıcı tarafından bir telefon hattı tahsis edilmesi durumunda, bu hat ile ilgili olarak satıcı veya sağlayıcı olağan &uuml;cret tarifesinden daha y&uuml;ksek bir tarife se&ccedil;emez.</p>\r\n\r\n<p><strong>İlave &ouml;demeler</strong></p>\r\n\r\n<p><strong>MADDE 19 &ndash;</strong>&nbsp;(1) S&ouml;zleşme kurulmadan &ouml;nce, s&ouml;zleşme y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml;nden kaynaklanan ve &uuml;zerinde anlaşılmış esas bedel dışında herhangi bir ilave bedel talep edilebilmesi i&ccedil;in t&uuml;keticinin a&ccedil;ık onayının ayrıca alınması zorunludur.</p>\r\n\r\n<p>(2) T&uuml;keticinin a&ccedil;ık onayı alınmadan ilave &ouml;deme y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml; doğuran se&ccedil;eneklerin kendiliğinden se&ccedil;ili olarak sunulmuş olmasından dolayı t&uuml;ketici bir &ouml;demede bulunmuş ise, satıcı veya sağlayıcı bu &ouml;demelerin iadesini derhal yapmak zorundadır.</p>\r\n\r\n<p><strong>Bilgilerin saklanması ve ispat y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml;</strong></p>\r\n\r\n<p><strong>MADDE 20 &minus;</strong>&nbsp;(1) Satıcı veya sağlayıcı, bu Y&ouml;netmelik kapsamında d&uuml;zenlenen cayma hakkı, bilgilendirme, teslimat ve diğer hususlardaki y&uuml;k&uuml;ml&uuml;l&uuml;klerine dair her bir işleme ilişkin bilgi ve belgeyi &uuml;&ccedil; yıl boyunca saklamak zorundadır.</p>\r\n\r\n<p>(2) Oluşturdukları sistem &ccedil;er&ccedil;evesinde, uzaktan iletişim ara&ccedil;larını kullanmak veya kullandırmak suretiyle satıcı veya sağlayıcı adına mesafeli s&ouml;zleşme kurulmasına aracılık edenler, bu Y&ouml;netmelikte yer alan hususlardan dolayı satıcı veya sağlayıcı ile yapılan işlemlere ilişkin kayıtları &uuml;&ccedil; yıl boyunca tutmak ve istenilmesi halinde bu bilgileri ilgili kurum, kuruluş ve t&uuml;keticilere vermekle y&uuml;k&uuml;ml&uuml;d&uuml;r.</p>\r\n\r\n<p>(3) Satıcı veya sağlayıcı elektronik ortamda t&uuml;keticiye teslim edilen&nbsp;gayrimaddi&nbsp;malların veya ifa edilen hizmetlerin ayıpsız olduğunu ispatla y&uuml;k&uuml;ml&uuml;d&uuml;r.</p>\r\n\r\n<p>BEŞİNCİ B&Ouml;L&Uuml;M</p>\r\n\r\n<p>&Ccedil;eşitli ve Son H&uuml;k&uuml;mler</p>\r\n\r\n<p><strong>Y&uuml;r&uuml;rl&uuml;kten kaldırılan y&ouml;netmelik</strong></p>\r\n\r\n<p><strong>MADDE 21 &ndash;</strong>&nbsp;(1)&nbsp;6/3/2011&nbsp;tarihli ve 27866 sayılı Resm&icirc; Gazete&rsquo;de yayımlanan Mesafeli S&ouml;zleşmelere Dair Y&ouml;netmelik y&uuml;r&uuml;rl&uuml;kten kaldırılmıştır.</p>\r\n\r\n<p><strong>Y&uuml;r&uuml;rl&uuml;k</strong></p>\r\n\r\n<p><strong>MADDE 22 &ndash;</strong>&nbsp;(1) Bu Y&ouml;netmelik yayımı tarihinden itibaren &uuml;&ccedil; ay sonra y&uuml;r&uuml;rl&uuml;ğe girer.</p>\r\n\r\n<p><strong>Y&uuml;r&uuml;tme</strong></p>\r\n\r\n<p><strong>MADDE 23 &ndash;</strong>&nbsp;(1) Bu Y&ouml;netmelik h&uuml;k&uuml;mlerini G&uuml;mr&uuml;k ve Ticaret Bakanı y&uuml;r&uuml;t&uuml;r.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>EK</p>\r\n\r\n<p>&Ouml;RNEK CAYMA FORMU</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>(Bu form, sadece s&ouml;zleşmeden cayma hakkı kullanılmak istenildiğinde doldurup</p>\r\n\r\n<p>g&ouml;nderilecektir.)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>-Kime:</strong>&nbsp;(Satıcı veya sağlayıcı tarafından doldurulacak olan bu kısımda satıcı veya sağlayıcının ismi, unvanı, adresi varsa faks numarası ve e-posta adresi yer alacaktır.)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>-Bu formla aşağıdaki malların satışına veya hizmetlerin sunulmasına ilişkin s&ouml;zleşmeden cayma hakkımı kullandığımı beyan ederim.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>-Sipariş tarihi veya teslim tarihi:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>-Cayma hakkına konu mal veya hizmet:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>-Cayma hakkına konu mal veya hizmetin bedeli:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>-T&uuml;keticinin adı ve soyadı:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>-T&uuml;keticinin adresi:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>-T&uuml;keticinin imzası:</strong>&nbsp;(Sadece&nbsp;kağıt&nbsp;&uuml;zerinde g&ouml;nderilmesi halinde)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>-Tarih:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', 20, '0', 'mesafeli-satis-sozlesmesi');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sepet`
--

CREATE TABLE `sepet` (
  `sepet_id` int(11) NOT NULL,
  `kullanici_id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `urun_adet` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `sepet`
--

INSERT INTO `sepet` (`sepet_id`, `kullanici_id`, `urun_id`, `urun_adet`) VALUES
(9, 152, 17, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siparis`
--

CREATE TABLE `siparis` (
  `siparis_id` int(11) NOT NULL,
  `siparis_zaman` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `siparis_no` int(11) DEFAULT NULL,
  `kullanici_id` int(11) NOT NULL,
  `siparis_toplam` float(9,2) NOT NULL,
  `siparis_tip` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `siparis_banka` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `siparis_odeme` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `siparis`
--

INSERT INTO `siparis` (`siparis_id`, `siparis_zaman`, `siparis_no`, `kullanici_id`, `siparis_toplam`, `siparis_tip`, `siparis_banka`, `siparis_odeme`) VALUES
(750012, '2017-08-02 18:27:35', NULL, 153, 120.00, 'Banka Havalesi', 'Yapı Kredi', '0');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siparis_detay`
--

CREATE TABLE `siparis_detay` (
  `siparisdetay_id` int(11) NOT NULL,
  `siparis_id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `urun_fiyat` float(9,2) NOT NULL,
  `urun_adet` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `siparis_detay`
--

INSERT INTO `siparis_detay` (`siparisdetay_id`, `siparis_id`, `urun_id`, `urun_fiyat`, `urun_adet`) VALUES
(11, 750012, 4, 25.00, 1),
(12, 750012, 5, 95.00, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(11) NOT NULL,
  `slider_ad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `slider_resimyol` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `slider_sira` int(2) NOT NULL,
  `slider_link` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `slider_durum` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `slider`
--

INSERT INTO `slider` (`slider_id`, `slider_ad`, `slider_resimyol`, `slider_sira`, `slider_link`, `slider_durum`) VALUES
(2, 'Slider 1', 'dimg/slider/3067331362252582652425762274502674026403slide-1.jpg', 12, '', '1'),
(4, 'Slider 2', 'dimg/slider/29538315172733129852slide-2.jpg', 2, '', '1'),
(5, 'Slider 3', 'dimg/slider/23243301742266520059slide-3.jpg', 3, '', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urun`
--

CREATE TABLE `urun` (
  `urun_id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `urun_zaman` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `urun_ad` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `urun_seourl` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `urun_detay` text COLLATE utf8_turkish_ci NOT NULL,
  `urun_fiyat` float(9,2) NOT NULL,
  `urun_video` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `urun_keyword` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `urun_stok` int(11) NOT NULL,
  `urun_durum` enum('0','1') COLLATE utf8_turkish_ci NOT NULL,
  `urun_onecikar` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `urun`
--

INSERT INTO `urun` (`urun_id`, `kategori_id`, `urun_zaman`, `urun_ad`, `urun_seourl`, `urun_detay`, `urun_fiyat`, `urun_video`, `urun_keyword`, `urun_stok`, `urun_durum`, `urun_onecikar`) VALUES
(15, 11, '2017-10-11 07:20:02', 'Acer VX5-591G-56B1 Intel Core i5', 'acer-vx5-591g-56b1-intel-core-i5', '<p>10/100 EthernetVar</p>\r\n\r\n<p>Ağırlık-2,5 kg</p>\r\n\r\n<p>Bellek Hızı2133 MHz</p>\r\n\r\n<p>Bellek Yuvası2</p>\r\n\r\n<p>Bluetooth &Ouml;zelliğiVar</p>\r\n\r\n<p>Boyutlar389 x 265.5 x 28.9 mm</p>\r\n\r\n<p>Dokunmatik EkranYok</p>\r\n\r\n<p>Ekran Boyutu15,6 in&ccedil;</p>\r\n\r\n<p>Ekran Kartı Bellek TipiDDR5</p>\r\n\r\n<p>Ekran Kartı Hafızası4 GB</p>\r\n\r\n<p>Ekran Kartı TipiY&uuml;ksek Seviye Harici Ekran Kartlı</p>\r\n\r\n<p>Ekran KartıNVIDIA GTX 1050</p>\r\n\r\n<p>Ekran &Ouml;zelliğiFull HD LED</p>\r\n\r\n<p>Garanti TipiResmi Distrib&uuml;t&ouml;r Garantili</p>\r\n\r\n<p>Harddisk Kapasitesi1 TB</p>\r\n', 400.00, '', 'dizüstü bilgisayar', 100, '1', '1'),
(16, 11, '2017-10-11 07:22:38', 'Lenovo Legion Y520 Intel Core i7', 'lenovo-legion-y520-intel-core-i7', '<p>10/100 EthernetVar</p>\r\n\r\n<p>Ağırlık-3,21 kg</p>\r\n\r\n<p>Bellek Yuvası2</p>\r\n\r\n<p>Bluetooth &Ouml;zelliğiVar</p>\r\n\r\n<p>Dokunmatik EkranYok</p>\r\n\r\n<p>Ekran Boyutu15,6 in&ccedil;</p>\r\n\r\n<p>Ekran Kartı Bellek TipiGDDR5</p>\r\n\r\n<p>Ekran Kartı Hafızası4 GB</p>\r\n\r\n<p>Ekran Kartı TipiY&uuml;ksek Seviye Harici Ekran Kartlı</p>\r\n\r\n<p>Ekran KartıNVIDIA GTX 1050</p>\r\n\r\n<p>Ekran &Ouml;zelliğiFull HD LED</p>\r\n\r\n<p>Garanti TipiResmi Distrib&uuml;t&ouml;r Garantili</p>\r\n\r\n<p>Harddisk Kapasitesi1 TB</p>\r\n\r\n<p>HDMIVar</p>\r\n\r\n<p>İşlemci Cache6 MB Cache</p>\r\n\r\n<p>İşlemci Hızı2,8 GHz</p>\r\n\r\n<p>İşlemci TipiIntel Core i7</p>\r\n\r\n<p>İşlemci7700HQ</p>\r\n\r\n<p>İşletim SistemiWindows 10 Home</p>\r\n\r\n<p>Kart OkuyucuVar</p>\r\n\r\n<p>Kimin Se&ccedil;imiG&uuml;nl&uuml;k, Oyun</p>\r\n\r\n<p>KlavyeNumerik Tuşlu, Q T&uuml;rk&ccedil;e</p>\r\n\r\n<p>Max Ekran &Ccedil;&ouml;z&uuml;n&uuml;rl&uuml;ğ&uuml;1920 x 1080</p>\r\n', 500.00, '', 'lenovo', 100, '1', '1'),
(17, 12, '2017-10-11 07:30:11', 'Apple iPad Wi-Fi 32GB 9.7', 'apple-ipad-wi-fi-32gb-9-7', '<p>&quot;&Ccedil;ok ince. B&uuml;y&uuml;k eğlence.<br />\r\n&Ouml;ğrenin, oynayın, gezinin, &uuml;retin. iPad, yapmayı sevdiğiniz her şey i&ccedil;in size olağan&uuml;st&uuml; bir ekran, inanılmaz bir performans ve birbirinden muhteşem uygulamalar sunuyor. İstediğiniz her yerde. Kolayca. B&uuml;y&uuml;leyici bir şekilde.<br />\r\n<br />\r\nG&ouml;z alıcı bir ekran. G&ouml;z alıcı bir boyut.<br />\r\nİster fotoğraflarınıza g&ouml;z atıyor ister alışveriş yapıyor veya sunum hazırlıyor olun, b&uuml;y&uuml;leyici 9.7 in&ccedil; Retina ekranın m&uuml;kemmel boyutu ve sunduğu muhteşem ayrıntılar sayesinde yaptığınız her şey capcanlı ve hayat dolu.<br />\r\n<br />\r\nKapasite<br />\r\n32GB<br />\r\n<br />\r\nBoyut ve Ağırlık<br />\r\nUzunluk: 240 mm (9.4 in&ccedil;)<br />\r\nGenişlik: 169,5 mm (6.6 in&ccedil;)<br />\r\nDerinlik: 7,5 mm (0.29 in&ccedil;)<br />\r\nAğırlık: 469 g (1.03 pound)<br />\r\n<br />\r\nKonnekt&ouml;r<br />\r\nLightning<br />\r\n<br />\r\nEkran<br />\r\nRetina ekran<br />\r\nIPS teknolojisine sahip 9.7 in&ccedil; (diyagonal) LED arkadan aydınlatmalı Multi-Touch ekran<br />\r\nİn&ccedil; başına 264 piksel (ppi) yoğunlukta 2048 x 1536 &ccedil;&ouml;z&uuml;n&uuml;rl&uuml;k<br />\r\nParmak izine dayanıklı, yağ tutmayan kaplama<br />\r\n<br />\r\n&Ccedil;ip<br />\r\n64 bit mimariye sahip A9 &ccedil;ip<br />\r\nT&uuml;mleşik M9 yardımcı işlemci</p>\r\n', 0.01, '', 'ipad', 100, '1', '1'),
(18, 12, '2017-10-11 07:32:00', 'Codegen CKL-097KL 9,7', 'codegen-ckl-097kl-9-7', '<p>Haraketli Sabitleme Mekanizması&nbsp;<br />\r\nCodegen 9.7&quot; Universal Klavyeli Tablet Kılıfında bulunan hareketli sabitleme mekanizması sayesinde kılıfınız tabletinize zarar vermeden sıkıca kavrar d&uuml;şmelere ve sarsıntılara karşı tabletinize en &uuml;st seviyede koruma sağlar.&nbsp;</p>\r\n\r\n<p><img src=\"http://images.hepsiburada.net/assets/Bilgisayar/ProductDesc/TamEkran.png\" style=\"height:350px; margin:0px; width:700px\" /></p>\r\n\r\n<p><br />\r\n<strong>Tam Ekran Kullanım</strong><br />\r\nCodegen 9.7&quot; Universal Klavyeli Tablet Kılıfının usb bağlantısını tabletiniz ile yaptığınızda android tabletlerdeki ekran klavyesi kaybolur bu sayede ekranın tamamını kullanabilirsiniz. İnce, sessiz klavyesi ve tam ekran kullanım kolaylığıyla tabletinizde yazı yazmak, arkadaşlarınızla yazışmak ve internette dolaşmak hi&ccedil; bu kadar keyifli olmamıştı.&nbsp;</p>\r\n', 50.00, '', 'codegen', 100, '1', '1'),
(19, 13, '2017-10-11 07:33:36', 'Samsung Galaxy Note 4', 'samsung-galaxy-note-4', '<p>Yenilenmiş Samsung Galaxy Note 4!</p>\r\n\r\n<p>12 Ay Garantili Yenilenmiş Akıllı Telefon!&nbsp;<br />\r\nYenilenmiş &Uuml;r&uuml;n Nedir?&nbsp;<br />\r\nKontrolleri yapılmış, gerekli t&uuml;m bakım ve onarım işlemlerinden ge&ccedil;irilmiş, t&uuml;m fonksiyonları %100 &ccedil;alışan, &uuml;zerinde hi&ccedil;bir darbe, &ccedil;izik, soyulma, aşınma izi bulunmayan, kozmetik olarak yeni (sıfır) cihazdan farksızdır. Yenilenmiş t&uuml;m seviyelerdeki cihazların i&ccedil; aksam, tuş ve fonksiyonları aynı kondisyonda olup %100 olarak &ccedil;alışır durumdadır. Kullanıcı hatası dışındaki sorunlar 12 ay s&uuml;re ile MPX iletişim firması tarafından garanti altındadır. Paket i&ccedil;erisinde aksesuar olarak sadece şarj aleti bulunmaktadır.&nbsp;</p>\r\n', 99.00, '', 'samsung', 100, '1', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urunfoto`
--

CREATE TABLE `urunfoto` (
  `urunfoto_id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `urunfoto_resimyol` varchar(255) NOT NULL,
  `urunfoto_sira` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `urunfoto`
--

INSERT INTO `urunfoto` (`urunfoto_id`, `urun_id`, `urunfoto_resimyol`, `urunfoto_sira`) VALUES
(83, 15, 'dimg/urun/289112297530878226779629721133106.jpg', 0),
(84, 15, 'dimg/urun/232212008820703258199629721034802.jpg', 0),
(85, 15, 'dimg/urun/315423005328082282499629721002034.jpg', 0),
(86, 16, 'dimg/urun/225693166327800234409619539591218.jpg', 0),
(87, 16, 'dimg/urun/294142320927556227689622405087282.jpg', 0),
(88, 16, 'dimg/urun/238822383221529220459622405054514.jpg', 0),
(89, 17, 'dimg/urun/250702413926834301859633037484082 (1)s.jpg', 0),
(90, 17, 'dimg/urun/263812358329879230049633037484082.jpg', 0),
(91, 18, 'dimg/urun/30490215512520230996Bilgisayar_2323043.jpg', 0),
(92, 18, 'dimg/urun/31775262252815829709Bilgisayar_2323044.jpg', 0),
(93, 18, 'dimg/urun/25327288312787525289Bilgisayar_2323042.jpg', 0),
(94, 19, 'dimg/urun/238022458324190244629697315258418.jpg', 0),
(95, 19, 'dimg/urun/314363163330920293019697315127346.jpg', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yorumlar`
--

CREATE TABLE `yorumlar` (
  `yorum_id` int(11) NOT NULL,
  `kullanici_id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `yorum_detay` text COLLATE utf8_turkish_ci NOT NULL,
  `yorum_zaman` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `yorum_onay` enum('0','1') COLLATE utf8_turkish_ci DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `yorumlar`
--

INSERT INTO `yorumlar` (`yorum_id`, `kullanici_id`, `urun_id`, `yorum_detay`, `yorum_zaman`, `yorum_onay`) VALUES
(1, 151, 9, 'asfsdfsdfsdf', '2017-07-21 17:14:56', '0'),
(2, 151, 0, 'ssadasdasdasdasdasdasd', '2017-07-21 17:15:45', '1'),
(3, 151, 9, 'asdsadasdasdasdasdasdasd asdasd', '2017-07-21 17:17:43', '1'),
(4, 151, 9, 'Raw denim you probably haven\'t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse.', '2017-07-21 17:19:17', '1'),
(5, 151, 9, 'fghfghfhfgh', '2017-07-21 17:19:57', '1'),
(6, 151, 0, 'Raw denim you probably haven\'t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse.', '2017-07-21 17:21:48', '1'),
(7, 151, 0, 'fghfghfgh', '2017-07-21 17:25:08', '1'),
(8, 151, 0, 'Raw denim you probably haven\'t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse.', '2017-07-21 17:40:07', '1'),
(11, 153, 5, 'Yorum 1', '2017-07-31 17:52:22', '1');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `ayar`
--
ALTER TABLE `ayar`
  ADD PRIMARY KEY (`ayar_id`);

--
-- Tablo için indeksler `banka`
--
ALTER TABLE `banka`
  ADD PRIMARY KEY (`banka_id`);

--
-- Tablo için indeksler `hakkimizda`
--
ALTER TABLE `hakkimizda`
  ADD PRIMARY KEY (`hakkimizda_id`);

--
-- Tablo için indeksler `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Tablo için indeksler `kullanici`
--
ALTER TABLE `kullanici`
  ADD PRIMARY KEY (`kullanici_id`);

--
-- Tablo için indeksler `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Tablo için indeksler `sepet`
--
ALTER TABLE `sepet`
  ADD PRIMARY KEY (`sepet_id`);

--
-- Tablo için indeksler `siparis`
--
ALTER TABLE `siparis`
  ADD PRIMARY KEY (`siparis_id`);

--
-- Tablo için indeksler `siparis_detay`
--
ALTER TABLE `siparis_detay`
  ADD PRIMARY KEY (`siparisdetay_id`);

--
-- Tablo için indeksler `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Tablo için indeksler `urun`
--
ALTER TABLE `urun`
  ADD PRIMARY KEY (`urun_id`);

--
-- Tablo için indeksler `urunfoto`
--
ALTER TABLE `urunfoto`
  ADD PRIMARY KEY (`urunfoto_id`);

--
-- Tablo için indeksler `yorumlar`
--
ALTER TABLE `yorumlar`
  ADD PRIMARY KEY (`yorum_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `banka`
--
ALTER TABLE `banka`
  MODIFY `banka_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Tablo için AUTO_INCREMENT değeri `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Tablo için AUTO_INCREMENT değeri `kullanici`
--
ALTER TABLE `kullanici`
  MODIFY `kullanici_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;
--
-- Tablo için AUTO_INCREMENT değeri `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Tablo için AUTO_INCREMENT değeri `sepet`
--
ALTER TABLE `sepet`
  MODIFY `sepet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Tablo için AUTO_INCREMENT değeri `siparis`
--
ALTER TABLE `siparis`
  MODIFY `siparis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=750013;
--
-- Tablo için AUTO_INCREMENT değeri `siparis_detay`
--
ALTER TABLE `siparis_detay`
  MODIFY `siparisdetay_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Tablo için AUTO_INCREMENT değeri `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Tablo için AUTO_INCREMENT değeri `urun`
--
ALTER TABLE `urun`
  MODIFY `urun_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- Tablo için AUTO_INCREMENT değeri `urunfoto`
--
ALTER TABLE `urunfoto`
  MODIFY `urunfoto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;
--
-- Tablo için AUTO_INCREMENT değeri `yorumlar`
--
ALTER TABLE `yorumlar`
  MODIFY `yorum_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
