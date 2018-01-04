/*
 Navicat Premium Data Transfer

 Source Server         : E-Ticaret
 Source Server Type    : MySQL
 Source Server Version : 100128
 Source Host           : localhost:3306
 Source Schema         : kategoriler

 Target Server Type    : MySQL
 Target Server Version : 100128
 File Encoding         : 65001

 Date: 04/01/2018 16:21:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_panel
-- ----------------------------
DROP TABLE IF EXISTS `admin_panel`;
CREATE TABLE `admin_panel`  (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_mail` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `admin_sifre` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `admin_bilgi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`admin_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admin_panel
-- ----------------------------
INSERT INTO `admin_panel` VALUES (1, 'samet@gmail.com', 'ssa', 'Samet Halifeoğlu');

-- ----------------------------
-- Table structure for arabalar
-- ----------------------------
DROP TABLE IF EXISTS `arabalar`;
CREATE TABLE `arabalar`  (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `title` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL,
  `secim` set('Sunroof','Otomatik Vites','Dağ Aracı','Dizel') CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL DEFAULT '',
  `karar` enum('Kırmızı','Siyah','Mavi') CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `tarih` datetime(0) NULL DEFAULT NULL,
  `test` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `param` decimal(5, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`aid`) USING BTREE,
  FULLTEXT INDEX `full_text_arama_1`(`test`, `title`)
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of arabalar
-- ----------------------------
INSERT INTO `arabalar` VALUES (1, 'ali bilmem', 'Otomatik Vites', 'Siyah', '2017-12-03 10:37:03', 'İnternet\'e bağlı değilsiniz. En yeni yardım içeriğini gösteren çevrimiçi Yardım\'ı almak istiyorsanız İnternet\'e bağlı olmanız gerekir. İnternet bağlantınızı denetleyin.', 22.00);
INSERT INTO `arabalar` VALUES (2, 'bilmem hasan', 'Dağ Aracı', 'Siyah', '2017-12-03 10:37:06', 'Yenilikleri, dokunarak veya fare ve klavye ile nasıl gezinebileceğinizi ve daha fazlasını öğrenin.\r\n', 15.00);
INSERT INTO `arabalar` VALUES (3, 'veli bilsin', 'Sunroof,Otomatik Vites', 'Kırmızı', '2017-12-03 10:37:08', 'Güçlü parolalar oluşturun, güvenlik denetim listemizin üzerinden geçin, bilgisayarlarınızı virüslerden koruyun ve daha pek çok şey yapın.\r\n', 100.00);

-- ----------------------------
-- Table structure for kategori
-- ----------------------------
DROP TABLE IF EXISTS `kategori`;
CREATE TABLE `kategori`  (
  `kategid` int(11) NOT NULL AUTO_INCREMENT,
  `kategadi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`kategid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of kategori
-- ----------------------------
INSERT INTO `kategori` VALUES (25, 'Elektronik');
INSERT INTO `kategori` VALUES (26, 'Mobilya');

-- ----------------------------
-- Table structure for urun_bilgileri
-- ----------------------------
DROP TABLE IF EXISTS `urun_bilgileri`;
CREATE TABLE `urun_bilgileri`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `urun_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `urun_resim` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `urun_klasor` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `urun_editor` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL,
  `urun_kategori` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `urun_adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `urun_detay` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `urun_fiyat` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `urun_kisacik` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `urun_id`(`urun_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 159 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of urun_bilgileri
-- ----------------------------
INSERT INTO `urun_bilgileri` VALUES (150, '58', '58_26058977tv2.jpg', '58', '<p><img alt=\"\" src=\"https://images.hepsiburada.net/assets/EE/ProductDesc/HBV000001BN69-1.jpg\" style=\"height:1133px; width:1153px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>3D Desteği</th>\r\n			<td>Yok</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Ambilight</th>\r\n			<td>Yok</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Curved (Kavisli)</th>\r\n			<td>Hayır</td>\r\n		</tr>\r\n		<tr>\r\n			<th>&Ccedil;&ouml;z&uuml;n&uuml;rl&uuml;k (Piksel)</th>\r\n			<td>1366 x 768</td>\r\n		</tr>\r\n		<tr>\r\n			<th>&Ccedil;&ouml;z&uuml;n&uuml;rl&uuml;k</th>\r\n			<td>HD</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Dahili Uydu Alıcı</th>\r\n			<td>Var</td>\r\n		</tr>\r\n		<tr>\r\n			<th>DLNA</th>\r\n			<td>Yok</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Ekran Boyutu</th>\r\n			<td>30 in&ccedil; - 39 in&ccedil;</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Ekran Ebatı</th>\r\n			<td>32 in&ccedil; / 81 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Ekran Formatı</th>\r\n			<td>16:9</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Ethernet Giriş</th>\r\n			<td>Yok</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Full HD Desteği</th>\r\n			<td>Yok</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Giriş / &Ccedil;ıkış Portları</th>\r\n			<td>Kulaklık, USB</td>\r\n		</tr>\r\n		<tr>\r\n			<th>G&ouml;r&uuml;nt&uuml; Tarama Hızı</th>\r\n			<td>50 Hz</td>\r\n		</tr>\r\n		<tr>\r\n			<th>G&ouml;r&uuml;nt&uuml; Teknolojisi</th>\r\n			<td>LED</td>\r\n		</tr>\r\n		<tr>\r\n			<th>HD Ready</th>\r\n			<td>Var</td>\r\n		</tr>\r\n		<tr>\r\n			<th>HDMI Girişleri</th>\r\n			<td>1</td>\r\n		</tr>\r\n		<tr>\r\n			<th>İşlemci &Ccedil;ekirdek Sayısı</th>\r\n			<td>2</td>\r\n		</tr>\r\n		<tr>\r\n			<th>İşletim Sistemi</th>\r\n			<td>Yok</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Model Yılı</th>\r\n			<td>2015</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Pc Bağlantısı</th>\r\n			<td>Var</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Scart</th>\r\n			<td>1 x Scart</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Ses &Ccedil;ıkışı</th>\r\n			<td>6 W x 2</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Ses Sistemi</th>\r\n			<td>German + Nicam Stereo</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Smart TV</th>\r\n			<td>Yok</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Smart TV</th>\r\n			<td>Hayır</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Teletext</th>\r\n			<td>Var</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Tuner</th>\r\n			<td>Var</td>\r\n		</tr>\r\n		<tr>\r\n			<th>USB Bağlantısı</th>\r\n			<td>1</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Uydu Alıcısı</th>\r\n			<td>Var</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Video Formatı</th>\r\n			<td>Hd Ready</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Wi-Fi</th>\r\n			<td>Yok</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table>\r\n	<caption>Diğer</caption>\r\n	<tbody>\r\n		<tr>\r\n			<th>Garanti S&uuml;resi (Ay)</th>\r\n			<td>36</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Yurtdışına Satış</th>\r\n			<td>Yok</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Stok kodu</th>\r\n			<td>HBV000001BN69</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 'Elektronik', 'Led Tv', 'Vestel 32HB5000 32\" 82 Ekran HD Uydu Alıcılı LED TV', '874,90', 'Vestel 32HB5000 32\" 82 Ekran HD Uydu Alıcılı LED TV');
INSERT INTO `urun_bilgileri` VALUES (151, '59', '59_9564800mak3.jpg', '59', '<p><img alt=\"\" src=\"https://images.hepsiburada.net/assets/EE/ProductDesc/FC9932_MarathonUltimateLED_header.jpg\" style=\"height:500px; width:1200px\" /><img alt=\"\" src=\"https://images.hepsiburada.net/assets/EE/ProductDesc/FC9932_TriActiveLED.png\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://images.hepsiburada.net/assets/EE/ProductDesc/170801_FC_MarathonUltimate_ComparisonChart.jpg\" /></p>\r\n', 'Elektronik', 'Süpürge Makinesi', 'Philips Marathon Ultimate FC9932/07 A Sınıfı Toz Torbasız Elektrikli Süpürge', '1.569,00', 'Philips Marathon Ultimate FC9932/07 A Sınıfı Toz Torbasız Elektrikli Süpürge');
INSERT INTO `urun_bilgileri` VALUES (152, '60', '60_1612657utu2.jpg', '60', '<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>Buhar Basıncı (bar)</th>\r\n			<td>220</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Buhar Kazanı</th>\r\n			<td>Yok</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Otomatik Kapanma</th>\r\n			<td>Var</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Su Doldurma Kapasitesi</th>\r\n			<td>300 ml</td>\r\n		</tr>\r\n		<tr>\r\n			<th>S&uuml;rekli Buhar gr/dk</th>\r\n			<td>50</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Taban</th>\r\n			<td>T-ionic Glide</td>\r\n		</tr>\r\n		<tr>\r\n			<th>&Uuml;r&uuml;n Rengi</th>\r\n			<td>Siyah</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Watt Aralığı</th>\r\n			<td>2401 ve &Uuml;zeri</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Watt</th>\r\n			<td>2600</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<caption>Diğer</caption>\r\n	<tbody>\r\n		<tr>\r\n			<th>Garanti S&uuml;resi (Ay)</th>\r\n			<td>24</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Yurtdışına Satış</th>\r\n			<td>Yok</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Stok kodu</th>\r\n			<td>HBV0000023HLD</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 'Elektronik', 'Buharlı Ütü', 'Philips Azur Performer Plus GC4527/00 2600 W T-ionic Glide Tabanlı Buharlı Ütü', '299,00', 'Philips Azur Performer Plus GC4527/00 2600 W T-ionic Glide Tabanlı Buharlı Ütü');
INSERT INTO `urun_bilgileri` VALUES (153, '61', '61_3087784mik4.jpg', '61', '<p>JBL Flip 4 Taşınabilir Bluetooth Hoparl&ouml;r</p>\r\n\r\n<p><img src=\"https://images.hepsiburada.net/assets/EE/ProductDesc/jbl-harman-1.jpg\" /></p>\r\n\r\n<h3>KABLOSUZ,SU GE&Ccedil;İRMEZ TAŞINABİLİR HOPARL&Ouml;R</h3>\r\n\r\n<p>Flip 4 flip serisinin en yeni hoparl&ouml;r&uuml;.<br />\r\n<br />\r\nŞaşırtıcı derecede g&uuml;&ccedil;l&uuml; stereo ses sağlayan taşınabilir bir hoparl&ouml;rd&uuml;r. Bu kompakt hoparl&ouml;r , 12 saat s&uuml;rekli ses &ccedil;alma &ouml;zelliği sağlayan 3000mah şarj edilebilir Li-ion pil ile g&uuml;&ccedil;lendirilmiştir.6 canlı renkte sunulan sportif dayanıklı, su ge&ccedil;irmez kumaş malzemelerden oluşan Flip 4 , partiyi heryere g&ouml;t&uuml;r&uuml;yor ve her hava koşulunda size eşlik ediyor. Aynı zamanda, kristal netliğinde konferans g&ouml;r&uuml;şmeleri yapmak i&ccedil;in yerleşik bir g&uuml;r&uuml;lt&uuml;y&uuml; ve yankıları engelleyen bir hoparl&ouml;r ile dinleme deneyimini zenginleştirmek i&ccedil;in kablosuz olarak 100&#39;den fazla JBL Connect + &ouml;zellikli hoparl&ouml;r&uuml; bir araya getiren JBL Connect + teknolojisi bulunur.<br />\r\n&bull; Bluetooth bağlantu&nbsp;<br />\r\n&bull; 12 saat şarj s&uuml;resi<br />\r\n&bull; IPX7 su ge&ccedil;irmezlik(1mt derinliğe kadar 30 dk )<br />\r\n&bull; JBL Connect+&nbsp;<br />\r\n&bull; Telefon ile g&ouml;r&uuml;şme<br />\r\n&bull; JBL Bass&nbsp;</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<p>Jbl hakkında<br />\r\nJbl markası 60 yıldan uzun bir s&uuml;redir Profesyonel ses &uuml;retimi alanında &ouml;nc&uuml;l&uuml;ğ&uuml;m&uuml;zle kazanılan teknolojiyi ve uzmanlığı &ouml;rnekleyen &uuml;r&uuml;nler sunmuştur.<br />\r\nJBl adı , kul&uuml;pler, sinemalar ve kayıt st&uuml;dyoları da dahil olmak &uuml;zere d&uuml;nyanın en prestijli yerlerinde bulunan konser salonlarından a&ccedil;ık hava stadyumlarına kadar &ccedil;eşitli mekanlarda canlı m&uuml;zik destekli doğala en yakın ses ile eş anlamlıdır. Bu uzmanlığı aldık ve ev, araba, taşınabilir medya oynatıcı, tekne, bilgisayar ve oyun sistemleri i&ccedil;in heyecan verici ses &uuml;r&uuml;nlerine uyguladık. JBL markası ne olursa olsun ve nerede olursa olsun, ses profesyonellerinin g&uuml;venebileceği marka olduğu i&ccedil;in sesli kullanıcıların g&uuml;vendiği markadır. Harika sesi &ouml;nemsiyorsan, &uuml;zerinde adınız olan bir JBL &ccedil;&ouml;z&uuml;m&uuml; vardır.</p>\r\n\r\n<p><img src=\"https://images.hepsiburada.net/assets/EE/ProductDesc/jbl-harman-2.jpg\" /></p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<p><img src=\"https://images.hepsiburada.net/assets/EE/ProductDesc/jbl-harman-3.jpg\" /></p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<p><img src=\"https://images.hepsiburada.net/assets/EE/ProductDesc/jbl-harman-4.jpg\" /></p>\r\n\r\n<p><br />\r\n<br />\r\n<strong>Teknik &Ouml;zellikler&nbsp;</strong><br />\r\n&bull; Bluetooth versiyon4.2<br />\r\n&bull; Desteklediği versiyonlar : A2DP V1.3, AVRCP V1.6, HFP V1.6, HSP V1.2<br />\r\n&bull; Transducer2 x 40mm<br />\r\n&bull; Toplam G&uuml;&ccedil; : 2 x 8W<br />\r\n&bull; Frekans aralığı : 70Hz &ndash; 20kHz<br />\r\n&bull; Sinyal g&uuml;r&uuml;lt&uuml; oranı : &ge;80dB<br />\r\n&bull; Batarya tipi : Lityum-ion polymer (3.7V, 3000mAh)<br />\r\n&bull; Batarya şarj s&uuml;resi : 3.5 saat 5V1A<br />\r\n&bull; Dinleme s&uuml;resi : 12 saate kadar (Ses seviyesine ve ses i&ccedil;eriğine g&ouml;re değişir)<br />\r\n&bull; Boyutlar : (YxGxD) 68 x 175 x 70 (mm)<br />\r\n&bull; Ağırlık : 515g</p>\r\n', 'Elektronik', 'Bluetooth Speaker', 'JBL Flip 4 Taşınabilir Bluetooth Hoparlör', '529,02', 'JBL Flip 4 Taşınabilir Bluetooth Hoparlör');
INSERT INTO `urun_bilgileri` VALUES (154, '62', '62_6721534klim2.jpg', '62', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Baymak Elegant Plus A++ 12000 Btu/h Yeni Nesil Inverter Klima</p>\r\n\r\n			<p><img alt=\"\" src=\"https://images.hepsiburada.net/assets/EE/ProductDesc/newbaymakelegantplus.jpg\" style=\"height:2692px; width:1218px\" /></p>\r\n\r\n			<p><img alt=\"\" src=\"https://images.hepsiburada.net/assets/EE/ProductDesc/callbaymak.jpg\" style=\"height:300px; width:950px\" /></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table>\r\n				<tbody>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table>\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<table>\r\n							<caption>&nbsp;</caption>\r\n							<tbody>\r\n								<tr>\r\n									<th>BTU (Isıtma Kapasitesi)</th>\r\n									<td>12113</td>\r\n								</tr>\r\n								<tr>\r\n									<th>BTU (Soğutma Kapasitesi)</th>\r\n									<td>12000</td>\r\n								</tr>\r\n								<tr>\r\n									<th>BTU Aralığı</th>\r\n									<td>9001 - 12000</td>\r\n								</tr>\r\n								<tr>\r\n									<th>Enerji Sınıfı</th>\r\n									<td>A++</td>\r\n								</tr>\r\n								<tr>\r\n									<th>Garanti Notu</th>\r\n									<td>Eğer satın aldığınız &uuml;r&uuml;n kurulum gerektiriyorsa, size en yakın yetkili servisi arayın.&Uuml;r&uuml;n kutusunun (ambalajın) a&ccedil;ılması ve kurulum işlemi mutlaka yetkili servis tarafından yapılmalıdır; aksi takdirde &uuml;r&uuml;n&uuml;n&uuml;z garanti kapsamı dışında kalır.</td>\r\n								</tr>\r\n								<tr>\r\n									<th>Inverter</th>\r\n									<td>Var</td>\r\n								</tr>\r\n								<tr>\r\n									<th>Kapasite BTU</th>\r\n									<td>12000</td>\r\n								</tr>\r\n								<tr>\r\n									<th>Klima T&uuml;r&uuml;</th>\r\n									<td>Split (Duvar Tipi)</td>\r\n								</tr>\r\n								<tr>\r\n									<th>Renk</th>\r\n									<td>Beyaz</td>\r\n								</tr>\r\n								<tr>\r\n									<th>Ses Seviyesi (dB)</th>\r\n									<td>53</td>\r\n								</tr>\r\n							</tbody>\r\n						</table>\r\n\r\n						<table>\r\n							<caption>Diğer</caption>\r\n							<tbody>\r\n								<tr>\r\n									<th>Garanti S&uuml;resi (Ay)</th>\r\n									<td>60</td>\r\n								</tr>\r\n								<tr>\r\n									<th>Yurtdışına Satış</th>\r\n									<td>Yok</td>\r\n								</tr>\r\n								<tr>\r\n									<th>Stok kodu</th>\r\n									<td>EVBAYMELEGPLUS12</td>\r\n								</tr>\r\n							</tbody>\r\n						</table>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'Elektronik', 'Klima', 'Baymak Elegant Plus A++ 12000 Btu/h Yeni Nesil Inverter Klima', '2.329,00', 'Baymak Elegant Plus A++ 12000 Btu/h Yeni Nesil Inverter Klima');
INSERT INTO `urun_bilgileri` VALUES (155, '63', '63_12441502isi3.jpg', '63', '<table style=\"width:1160px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline\">\r\n			<p><strong>Kumtel LX-6331 2000 Watt Fanlı Isıtıcı</strong></p>\r\n\r\n			<p>&middot;2000 Watt G&uuml;&ccedil;</p>\r\n\r\n			<p>&middot;Emniyetli, Termik kesicili</p>\r\n\r\n			<p>&middot;Termostatlı</p>\r\n\r\n			<p>&middot;Fanlı</p>\r\n\r\n			<p>&middot;Duvara montaj &ouml;zelliği</p>\r\n\r\n			<p>&middot;3 ayrı g&uuml;&ccedil;te kullanım</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table style=\"width:1160px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline\">\r\n			<table style=\"width:1160px\">\r\n				<tbody>\r\n					<tr>\r\n						<td style=\"vertical-align:baseline\">&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table style=\"width:1160px\">\r\n				<tbody>\r\n					<tr>\r\n						<td style=\"vertical-align:baseline\">\r\n						<table style=\"width:1152px\">\r\n							<caption>&nbsp;</caption>\r\n							<tbody>\r\n								<tr>\r\n									<th style=\"text-align:left; vertical-align:baseline; width:460px\">Garanti Notu</th>\r\n									<td style=\"vertical-align:baseline\">Eğer satın aldığınız &uuml;r&uuml;n kurulum gerektiriyorsa, size en yakın yetkili servisi arayın.&Uuml;r&uuml;n kutusunun (ambalajın) a&ccedil;ılması ve kurulum işlemi mutlaka yetkili servis tarafından yapılmalıdır; aksi takdirde &uuml;r&uuml;n&uuml;n&uuml;z garanti kapsamı dışında kalır.</td>\r\n								</tr>\r\n								<tr>\r\n									<th style=\"text-align:left; vertical-align:baseline; width:460px\">Infrared Watt Aralığı</th>\r\n									<td style=\"vertical-align:baseline\">2000</td>\r\n								</tr>\r\n								<tr>\r\n									<th style=\"text-align:left; vertical-align:baseline; width:460px\">Isıtıcı T&uuml;r&uuml;</th>\r\n									<td style=\"vertical-align:baseline\">Fanlı</td>\r\n								</tr>\r\n							</tbody>\r\n						</table>\r\n\r\n						<table style=\"width:1152px\">\r\n							<caption>Diğer</caption>\r\n							<tbody>\r\n								<tr>\r\n									<th style=\"text-align:left; vertical-align:baseline; width:460px\">Garanti S&uuml;resi (Ay)</th>\r\n									<td style=\"vertical-align:baseline\">24</td>\r\n								</tr>\r\n								<tr>\r\n									<th style=\"text-align:left; vertical-align:baseline; width:460px\">Yurtdışına Satış</th>\r\n									<td style=\"vertical-align:baseline\">Yok</td>\r\n								</tr>\r\n								<tr>\r\n									<th style=\"text-align:left; vertical-align:baseline; width:460px\">Stok kodu</th>\r\n									<td style=\"vertical-align:baseline\">EVKUMTELLX6331</td>\r\n								</tr>\r\n							</tbody>\r\n						</table>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'Elektronik', 'UFO Isıtıcı', 'Kumtel LX-6331 2000 Watt Fanlı Isıtıcı', '42,00', 'Kumtel LX-6331 2000 Watt Fanlı Isıtıcı');
INSERT INTO `urun_bilgileri` VALUES (156, '65', '65_9857504sof1.jpg', '65', '<table style=\"width:1160px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline\">\r\n			<p><strong>Baymak BT 7000 Banyo Tipi Elektrikli Şofben</strong></p>\r\n\r\n			<p>&middot;&Ccedil;alışma Gerilimi ( V ): 230</p>\r\n\r\n			<p>&middot;Kademe Sayısı: 3</p>\r\n\r\n			<p>&middot;&Ccedil;alışma G&uuml;c&uuml; (W): 3000/4000/7000</p>\r\n\r\n			<p>&middot;&Ccedil;ekilen Akım (A): 13,6/18,2/31,8</p>\r\n\r\n			<p>&middot;Minimum Su Basıncı ( Bar ): 0,2</p>\r\n\r\n			<p>&middot;Su Debisi ( Lt./Dak. ): 2-4 lt./dak.</p>\r\n\r\n			<p>&middot;Koruma Sınıfı: IP 24 Sınıf I</p>\r\n\r\n			<p>&middot;Cihazla Verilen Aksesuarlar: Duş Başlığı, Hortum, 32 A</p>\r\n\r\n			<p>&middot;6 ayrı emniyet koruması sayesinde g&uuml;venli kullanım</p>\r\n\r\n			<p>&middot;Aşırı su basıncına karşı emniyet s&uuml;babı</p>\r\n\r\n			<p>&middot;Yanmaya dayanıklı alev almayan orjinal hammadde</p>\r\n\r\n			<p>&middot;Giriş-&ccedil;ıkış suyu kesildiğinde enerjiyi kesen &ouml;zel diyafram</p>\r\n\r\n			<p>&middot;Aşırı ısınmayı &ouml;nleyen emniyet termostatı</p>\r\n\r\n			<p>&middot;Aşırı ısı ve y&uuml;ksek akım kesici 2.daldırma termostatı</p>\r\n\r\n			<p>&middot;Kire&ccedil; tutmayan ve ek yalıtımlı rezistans</p>\r\n\r\n			<p><strong>&ldquo;İlgili &uuml;r&uuml;n ev tipi kullanımına uygun olup &uuml;r&uuml;n&uuml;n t&uuml;m satış noktalarından temini halinde ev haricindeki kullanım alanlarında &uuml;r&uuml;n garanti dışı kapsamına girmektedir. Detaylı bilgi i&ccedil;in &uuml;retici firmadan bilgi alabilirsiniz.&rdquo;<br />\r\n			<br />\r\n			&Uuml;r&uuml;n kurulumu &uuml;cretlidir.</strong><br />\r\n			&nbsp;</p>\r\n\r\n			<p>&middot;Paket i&ccedil;erisinde 1 adet hortum &ccedil;ıkmakta olup kullanım alanınıza g&ouml;re 2&rsquo;ye b&ouml;lmek suretiyle hortumun ayarlaması ger&ccedil;ekleştirilmelidir.</p>\r\n\r\n			<p>&nbsp;</p>\r\n			<br />\r\n			<br />\r\n			<strong><img src=\"https://images.hepsiburada.net/assets/EE/ProductDesc/callbaymak.jpg\" style=\"height:300px; margin:0px; width:950px\" /></strong>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table style=\"width:1160px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline\">\r\n			<table style=\"width:1160px\">\r\n				<tbody>\r\n					<tr>\r\n						<td style=\"vertical-align:baseline\">&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table style=\"width:1160px\">\r\n				<tbody>\r\n					<tr>\r\n						<td style=\"vertical-align:baseline\">\r\n						<table style=\"width:1152px\">\r\n							<caption>&nbsp;</caption>\r\n							<tbody>\r\n								<tr>\r\n									<th style=\"text-align:left; vertical-align:baseline; width:460px\">Garanti Notu</th>\r\n									<td style=\"vertical-align:baseline\">Eğer satın aldığınız &uuml;r&uuml;n kurulum gerektiriyorsa, size en yakın yetkili servisi arayın.&Uuml;r&uuml;n kutusunun (ambalajın) a&ccedil;ılması ve kurulum işlemi mutlaka yetkili servis tarafından yapılmalıdır; aksi takdirde &uuml;r&uuml;n&uuml;n&uuml;z garanti kapsamı dışında kalır.</td>\r\n								</tr>\r\n							</tbody>\r\n						</table>\r\n\r\n						<table style=\"width:1152px\">\r\n							<caption>Diğer</caption>\r\n							<tbody>\r\n								<tr>\r\n									<th style=\"text-align:left; vertical-align:baseline; width:460px\">Garanti S&uuml;resi (Ay)</th>\r\n									<td style=\"vertical-align:baseline\">24</td>\r\n								</tr>\r\n								<tr>\r\n									<th style=\"text-align:left; vertical-align:baseline; width:460px\">Yurtdışına Satış</th>\r\n									<td style=\"vertical-align:baseline\">Yok</td>\r\n								</tr>\r\n								<tr>\r\n									<th style=\"text-align:left; vertical-align:baseline; width:460px\">Stok kodu</th>\r\n									<td style=\"vertical-align:baseline\">EVBAYBT7000</td>\r\n								</tr>\r\n							</tbody>\r\n						</table>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'Elektronik', 'Elektrikli Şofben', 'Baymak BT 7000 Banyo Tipi Elektrikli Şofben', '135,00', 'Baymak BT 7000 Banyo Tipi Elektrikli Şofben');
INSERT INTO `urun_bilgileri` VALUES (157, '64', '64_28529157ufo3.jpg', '64', '', 'Elektronik', 'Fanlı Isıtıcı', 'Ufo Star/Uk 3000 Watt Uzaktan Kumandalı Infrared Isıtıcı', '369,01', 'Ufo Star/Uk 3000 Watt Uzaktan Kumandalı Infrared Isıtıcı');
INSERT INTO `urun_bilgileri` VALUES (158, '66', '66_12578959ee.jpg', '66', '', 'Mobilya', 'Kanepe', '', '', '');

-- ----------------------------
-- Table structure for urun_resimleri
-- ----------------------------
DROP TABLE IF EXISTS `urun_resimleri`;
CREATE TABLE `urun_resimleri`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `urun_id` int(11) NOT NULL,
  `adi` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `klasor` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 179 CHARACTER SET = utf8 COLLATE = utf8_croatian_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of urun_resimleri
-- ----------------------------
INSERT INTO `urun_resimleri` VALUES (116, 38, '38_5098345hdmi.jpg', '38');
INSERT INTO `urun_resimleri` VALUES (110, 35, '35_16923222USB.jpg', '35');
INSERT INTO `urun_resimleri` VALUES (111, 37, '37_528226coklupriz.jpg', '37');
INSERT INTO `urun_resimleri` VALUES (107, 31, '31_4034066ledtv.jpg', '31');
INSERT INTO `urun_resimleri` VALUES (108, 32, '32_25750767blututhoparlor.jpg', '32');
INSERT INTO `urun_resimleri` VALUES (132, 34, '34_716296radyo1.jpg', '34');
INSERT INTO `urun_resimleri` VALUES (115, 39, '39_11214203uydualici.jpg', '39');
INSERT INTO `urun_resimleri` VALUES (118, 33, '33_15521888blutut.jpg', '33');
INSERT INTO `urun_resimleri` VALUES (119, 40, '40_21953088blutut.jpg', '40');
INSERT INTO `urun_resimleri` VALUES (120, 36, '36_20542216muzikkutusu.jpg', '36');
INSERT INTO `urun_resimleri` VALUES (121, 41, '41_27954753supurgemak.jpg', '41');
INSERT INTO `urun_resimleri` VALUES (122, 42, '42_18716339utu.jpg', '42');
INSERT INTO `urun_resimleri` VALUES (123, 43, '43_26622860Klima.jpg', '43');
INSERT INTO `urun_resimleri` VALUES (124, 44, '44_4765905ledtv.jpg', '44');
INSERT INTO `urun_resimleri` VALUES (125, 47, '47_156502indir (1).jpg', '47');
INSERT INTO `urun_resimleri` VALUES (126, 49, '49_25597501elektronik.jpg', '49');
INSERT INTO `urun_resimleri` VALUES (127, 50, '50_5969764dolap.jpg', '50');
INSERT INTO `urun_resimleri` VALUES (128, 51, '51_5602503kitaplik.jpg', '51');
INSERT INTO `urun_resimleri` VALUES (129, 52, '52_4780221tvsehpa.jpg', '52');
INSERT INTO `urun_resimleri` VALUES (131, 53, '53_1029673sds.jpg', '53');
INSERT INTO `urun_resimleri` VALUES (133, 34, '34_8265507radyo2.jpg', '34');
INSERT INTO `urun_resimleri` VALUES (135, 34, '34_25473018radyo3.jpg', '34');
INSERT INTO `urun_resimleri` VALUES (137, 55, '55_5049014ee.jpg', '55');
INSERT INTO `urun_resimleri` VALUES (138, 56, '56_28275712ee.jpg', '56');
INSERT INTO `urun_resimleri` VALUES (139, 57, '57_8850869radyo3.jpg', '57');
INSERT INTO `urun_resimleri` VALUES (140, 58, '58_7716331tv1.jpg', '58');
INSERT INTO `urun_resimleri` VALUES (141, 58, '58_26058977tv2.jpg', '58');
INSERT INTO `urun_resimleri` VALUES (142, 59, '59_28447428mak2.jpg', '59');
INSERT INTO `urun_resimleri` VALUES (143, 59, '59_13052114mak1.jpg', '59');
INSERT INTO `urun_resimleri` VALUES (144, 59, '59_9564800mak3.jpg', '59');
INSERT INTO `urun_resimleri` VALUES (145, 60, '60_14894933utu1.jpg', '60');
INSERT INTO `urun_resimleri` VALUES (146, 60, '60_11568774utu3.jpg', '60');
INSERT INTO `urun_resimleri` VALUES (147, 60, '60_9626619utu4.jpg', '60');
INSERT INTO `urun_resimleri` VALUES (148, 60, '60_1612657utu2.jpg', '60');
INSERT INTO `urun_resimleri` VALUES (149, 61, '61_7956594mik1.jpg', '61');
INSERT INTO `urun_resimleri` VALUES (150, 61, '61_5284891mik2.jpg', '61');
INSERT INTO `urun_resimleri` VALUES (151, 61, '61_22630841mik3.jpg', '61');
INSERT INTO `urun_resimleri` VALUES (152, 61, '61_3087784mik4.jpg', '61');
INSERT INTO `urun_resimleri` VALUES (153, 62, '62_9259745klim1.jpg', '62');
INSERT INTO `urun_resimleri` VALUES (154, 62, '62_12681919klim3.jpg', '62');
INSERT INTO `urun_resimleri` VALUES (155, 62, '62_14023081klim4.jpg', '62');
INSERT INTO `urun_resimleri` VALUES (156, 62, '62_6721534klim2.jpg', '62');
INSERT INTO `urun_resimleri` VALUES (157, 63, '63_22896366isi1.jpg', '63');
INSERT INTO `urun_resimleri` VALUES (158, 63, '63_7461908isi2.jpg', '63');
INSERT INTO `urun_resimleri` VALUES (159, 63, '63_12441502isi3.jpg', '63');
INSERT INTO `urun_resimleri` VALUES (160, 65, '65_18054755sof3.jpg', '65');
INSERT INTO `urun_resimleri` VALUES (161, 65, '65_4046226sof2.jpg', '65');
INSERT INTO `urun_resimleri` VALUES (162, 65, '65_9857504sof1.jpg', '65');
INSERT INTO `urun_resimleri` VALUES (164, 64, '64_6746028ufo2.jpg', '64');
INSERT INTO `urun_resimleri` VALUES (165, 64, '64_28529157ufo3.jpg', '64');
INSERT INTO `urun_resimleri` VALUES (177, 2, '2_19809068ee.jpg', '2');
INSERT INTO `urun_resimleri` VALUES (176, 2147483647, '_7092329ee.jpg', '180103094346');
INSERT INTO `urun_resimleri` VALUES (178, 3, '3_14909562supurmak.jpg', '3');

-- ----------------------------
-- Table structure for urunler
-- ----------------------------
DROP TABLE IF EXISTS `urunler`;
CREATE TABLE `urunler`  (
  `urunid` int(11) NOT NULL AUTO_INCREMENT,
  `urunadi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `urunkategori` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`urunid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 67 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of urunler
-- ----------------------------
INSERT INTO `urunler` VALUES (56, 'Salam', 'Market');
INSERT INTO `urunler` VALUES (57, 'Süt', 'Market');
INSERT INTO `urunler` VALUES (58, 'Led Tv', 'Elektronik');
INSERT INTO `urunler` VALUES (59, 'Süpürge Makinesi', 'Elektronik');
INSERT INTO `urunler` VALUES (60, 'Buharlı Ütü', 'Elektronik');
INSERT INTO `urunler` VALUES (61, 'Bluetooth Speaker', 'Elektronik');
INSERT INTO `urunler` VALUES (62, 'Klima', 'Elektronik');
INSERT INTO `urunler` VALUES (63, 'UFO Isıtıcı', 'Elektronik');
INSERT INTO `urunler` VALUES (64, 'Fanlı Isıtıcı', 'Elektronik');
INSERT INTO `urunler` VALUES (65, 'Elektrikli Şofben', 'Elektronik');
INSERT INTO `urunler` VALUES (66, 'Kanepe', 'Mobilya');

-- ----------------------------
-- Table structure for user_bilgileri
-- ----------------------------
DROP TABLE IF EXISTS `user_bilgileri`;
CREATE TABLE `user_bilgileri`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) NULL DEFAULT NULL,
  `user_resim` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `user_klasor` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `user_adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `user_mail` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `user_sifre` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_bilgileri
-- ----------------------------
INSERT INTO `user_bilgileri` VALUES (11, 2147483647, '_7092329ee.jpg', '180103094346', NULL, NULL, NULL);
INSERT INTO `user_bilgileri` VALUES (12, 2, '2_19809068ee.jpg', '2', NULL, NULL, NULL);
INSERT INTO `user_bilgileri` VALUES (13, 3, '3_14909562supurmak.jpg', '3', NULL, NULL, NULL);

-- ----------------------------
-- Function structure for fncUzunluk
-- ----------------------------
DROP FUNCTION IF EXISTS `fncUzunluk`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fncUzunluk`(`adi` VARCHAR(255)) RETURNS int(11)
BEGIN

	SET @degis = 0;
	 IF CHAR_LENGTH(adi) > 10 THEN
				SET @degis = 20;
	ELSE
		SET @degis = 10;
	END IF;
	RETURN @degis;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for NewProc
-- ----------------------------
DROP PROCEDURE IF EXISTS `NewProc`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `NewProc`(IN `arama` VARCHAR(255))
BEGIN
	
 SET	@asas = arama;
 
 SELECT *from arabalar where MATCH(title, test) 
 against(CONCAT(@asas) in boolean mode);
 
	
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
