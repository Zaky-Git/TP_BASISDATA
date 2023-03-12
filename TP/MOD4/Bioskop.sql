/* UBAH SETIAP NAMA TABEL DENGAN FORMAT NAMA TABEL_NIM */

CREATE TABLE FILM
  (
    id_film  VARCHAR2 (10) NOT NULL ,
    judul    VARCHAR2 (50) ,
    durasi   VARCHAR2 (10) ,
    tahun    NUMBER ,
    sinopsis VARCHAR2 (2000)
  ) ;
ALTER TABLE FILM ADD CONSTRAINT Film_PK PRIMARY KEY ( id_film ) ;

CREATE TABLE TEATER
  (
    id_teater   VARCHAR2 (10) NOT NULL ,
    kelas        VARCHAR2 (10) ,
    harga        NUMBER ,
    kapasitas    NUMBER
  ) ;
ALTER TABLE TEATER ADD CONSTRAINT Teater_PK PRIMARY KEY ( id_teater ) ;

CREATE TABLE JADWAL
  (
    id_jadwal       VARCHAR2 (10) NOT NULL ,
    id_film         VARCHAR2 (10) NOT NULL ,
    id_teater       VARCHAR2 (10) NOT NULL ,
    periode_start   DATE ,
    periode_end     DATE
  ) ;
ALTER TABLE JADWAL ADD CONSTRAINT Jadwal_PK PRIMARY KEY ( id_jadwal ) ;


CREATE TABLE KURSI
  (
    id_inventaris VARCHAR2 (5) NOT NULL ,
    id_teater VARCHAR2 (10) NOT NULL,
	no_kursi     VARCHAR2 (5)
  ) ;
ALTER TABLE KURSI ADD CONSTRAINT Kursi_PK PRIMARY KEY ( id_inventaris ) ;

CREATE TABLE MEMBER
  (
    id_member   VARCHAR2 (10) NOT NULL ,
    nama_member VARCHAR2 (30) ,
    no_hp       VARCHAR2 (13) ,
    email       VARCHAR2 (50) ,
    tgl_lahir   DATE
  ) ;
ALTER TABLE MEMBER ADD CONSTRAINT Member_PK PRIMARY KEY ( id_member ) ;


CREATE TABLE TRANSAKSI
  (
    kode_pemesanan  VARCHAR2 (10) NOT NULL ,
    id_member       VARCHAR2 (10) NOT NULL ,
    id_jadwal       VARCHAR2 (10) NOT NULL ,
    id_inventaris   VARCHAR2 (5) NOT NULL ,
    tanggal         DATE ,
    status          VARCHAR2 (10)
  ) ;
ALTER TABLE TRANSAKSI ADD CONSTRAINT Transaksi_PK PRIMARY KEY ( kode_pemesanan ) ;

ALTER TABLE JADWAL ADD CONSTRAINT Jadwal_Film_FK FOREIGN KEY ( id_film ) REFERENCES Film ( id_film ) ;
ALTER TABLE JADWAL ADD CONSTRAINT Jadwal_Teater_FK FOREIGN KEY ( id_teater ) REFERENCES Teater ( id_teater ) ;
ALTER TABLE KURSI ADD CONSTRAINT Kursi_Teater_FK FOREIGN KEY ( id_teater ) REFERENCES Teater ( id_teater ) ;
ALTER TABLE TRANSAKSI ADD CONSTRAINT TRANSAKSI_Jadwal_FK FOREIGN KEY ( id_jadwal ) REFERENCES Jadwal ( id_jadwal ) ;
ALTER TABLE TRANSAKSI ADD CONSTRAINT TRANSAKSI_Kursi_FK FOREIGN KEY ( id_inventaris ) REFERENCES Kursi ( id_inventaris ) ;
ALTER TABLE TRANSAKSI ADD CONSTRAINT TRANSAKSI_Member_FK FOREIGN KEY ( id_member ) REFERENCES Member ( id_member ) ;

INSERT INTO film (id_film, judul, durasi, tahun, sinopsis) VALUES('F0101','Keluarga Cemara','110',2019,'Fokus cerita ini masih soal, Emak serta kedua anak mereka, Euis dan Ara . Persis dengan cerita di sinetronnya, film ini mengisahkan tentang bagaimana perjalanan hidup keluarga Abah yang semula nyaman dan mapan lalu kemudian mendadak bangkrut. Abah pun mengajak keluarganya pindah ke rumah warisan yang cukup jauh dari kota. Dengan segala keterbatasan dan kekurangan yang ia memiliki, Abah berusaha menjadi kepala keluarga serta ayah yang baik untuk anak-anaknya. Untung saja, Emak tak pernah lelah mendampinginya dan berusaha menjadi sandaran di saat mereka sedih.');
INSERT INTO film (id_film, judul, durasi, tahun, sinopsis) VALUES('F0102','Habibie Ainun 3','96',2019,'Habibie dan Ainun 3 adalah sebuah film Indonesia tahun 2019 yang disutradarai oleh Hanung Bramantyo dan diproduksi oleh Manoj Punjabi (MD Pictures). Film ini adalah film ketiga dari seri film Habibie dan Ainun. Bila "Rudy Habibie" merupakan prekuel dari kisah Habibie muda, maka film Habibie dan Ainun 3 ini adalah prekuel dari kisah Ainun muda. Film ini dijadwalkan rilis pada 19 Desember 2019. Hasri Ainun Besari diperankan oleh Maudy Ayunda menggantikan Bunga Citra Lestari pada film pertama, karena film ini akan lebih menekankan pada kisah Ainun di masa muda.');
INSERT INTO film (id_film, judul, durasi, tahun, sinopsis) VALUES('F0103','Taufiq','105',2019,'Kisah penjalanan hidup politisi yang juga suami Mantan Presiden RI, Megawati Soekarnoputri, Taufiq Kiemas diangkat dalam sebuah film tayang 14 Maret 2019. Film yang diangkat dari kisah nyata itu disutradarai sekaligus skenarionya ditulis oleh Ismail Basbeth. Perjalanan hidup membawanya ke Jakarta dan bertemu langsung dengan Soekarno, menjalin persahabatan dengan Guntur Soekarnoputra serta bertemu Megawati Soekarnoputri untuk pertama kalinya. Taufiq akan memahami arti dari persahabatan, keluarga, cinta dan negara ketika dia menjalani ujian hidup sebagai seorang nasionalis. Setelah itu Ia dijebloskan ke penjara bersama sahabatnya dituduh sebagai anggota Komunis. Dalam penjara Taufiq banyak bertemu orang-orang hebat. Dari situlah perjalanan seorang lelaki yang menantang badai.');
INSERT INTO film (id_film, judul, durasi, tahun, sinopsis) VALUES('F0104','Buya Hamka','110',2019,'Buya Hamka adalah film drama biografi Indonesia tentang Abdul Malik Karim Amrullah atau Hamka, seorang ulama Indonesia yang dikenal sebagai penulis, pujangga, dan politisi. Buya Hamka akan mengisahkan kehidupan Hamka sejak lahir sampai meninggal dunia. Sebelum menjadi sosok yang dikenal banyak orang, Hamka telah melewati beberapa perubahan, mulai dari kanak-kanak, remaja, hingga berkeluarga. Sebagai ulama, film ini menyoroti bagaimana cara Hamka menyampaikan dakwahnya secara santun. Selain itu, Buya Hamka menyoroti aspek humanis Hamka dan prosesnya menggapai semua pencapaian.');

INSERT INTO teater (id_teater,Kelas,harga,kapasitas) VALUES('Teater 1','Reguler',30000,50);
INSERT INTO teater (id_teater,Kelas,harga,kapasitas) VALUES('Teater 2','Sweetbox',100000,50);
INSERT INTO teater (id_teater,Kelas,harga,kapasitas) VALUES('Teater 3','4D',75000,50);
INSERT INTO teater (id_teater,Kelas,harga,kapasitas) VALUES('Teater 4','Velvet',80000,50);
INSERT INTO teater (id_teater,Kelas,harga,kapasitas) VALUES('Teater 5','3D',50000,50);

INSERT INTO jadwal (Id_jadwal,Id_film,id_teater,Periode_start,Periode_end) VALUES('JT001','F0101','Teater 1','01-07-2019','07-07-2019');
INSERT INTO jadwal (Id_jadwal,Id_film,id_teater,Periode_start,Periode_end) VALUES('JT002','F0101','Teater 1','01-07-2019','07-07-2019');
INSERT INTO jadwal (Id_jadwal,Id_film,id_teater,Periode_start,Periode_end) VALUES('JT003','F0102','Teater 1','01-07-2019','07-07-2019');
INSERT INTO jadwal (Id_jadwal,Id_film,id_teater,Periode_start,Periode_end) VALUES('JT004','F0101','Teater 2','01-07-2019','07-07-2019');
INSERT INTO jadwal (Id_jadwal,Id_film,id_teater,Periode_start,Periode_end) VALUES('JT005','F0103','Teater 2','01-07-2019','07-07-2019');
INSERT INTO jadwal (Id_jadwal,Id_film,id_teater,Periode_start,Periode_end) VALUES('JT006','F0102','Teater 2','01-07-2019','07-07-2019');
INSERT INTO jadwal (Id_jadwal,Id_film,id_teater,Periode_start,Periode_end) VALUES('JT007','F0104','Teater 2','01-07-2019','07-07-2019');
INSERT INTO jadwal (Id_jadwal,Id_film,id_teater,Periode_start,Periode_end) VALUES('JT008','F0102','Teater 3','01-07-2019','07-07-2019');
INSERT INTO jadwal (Id_jadwal,Id_film,id_teater,Periode_start,Periode_end) VALUES('JT009','F0101','Teater 1','01-07-2019','07-07-2019');
INSERT INTO jadwal (Id_jadwal,Id_film,id_teater,Periode_start,Periode_end) VALUES('JT010','F0102','Teater 1','01-07-2019','07-07-2019');



INSERT INTO kursi(id_inventaris,id_teater,No_kursi) VALUES('IN101','Teater 1','A1');
INSERT INTO kursi(id_inventaris,id_teater,No_kursi) VALUES('IN102','Teater 1','A2');
INSERT INTO kursi(id_inventaris,id_teater,No_kursi) VALUES('IN103','Teater 1','A3');
INSERT INTO kursi(id_inventaris,id_teater,No_kursi) VALUES('IN104','Teater 1','A4');
INSERT INTO kursi(id_inventaris,id_teater,No_kursi) VALUES('IN105','Teater 1','A5');
INSERT INTO kursi(id_inventaris,id_teater,No_kursi) VALUES('IN106','Teater 2','A6');
INSERT INTO kursi(id_inventaris,id_teater,No_kursi) VALUES('IN107','Teater 2','A7');
INSERT INTO kursi(id_inventaris,id_teater,No_kursi) VALUES('IN108','Teater 2','A8');
INSERT INTO kursi(id_inventaris,id_teater,No_kursi) VALUES('IN109','Teater 2','B1');
INSERT INTO kursi(id_inventaris,id_teater,No_kursi) VALUES('IN110','Teater 2','B2');
INSERT INTO kursi(id_inventaris,id_teater,No_kursi) VALUES('IN111','Teater 2','C1');
INSERT INTO kursi(id_inventaris,id_teater,No_kursi) VALUES('IN112','Teater 2','C2');


INSERT INTO  member (Id_member,Nama_member,No_hp,email,Tgl_lahir) VALUES('MM0111','Anto','085267656789','Anto2016@gmail.com','21-07-1989');
INSERT INTO  member (Id_member,Nama_member,No_hp,email,Tgl_lahir) VALUES('MM0112','Budi','081367589632','Budi2016@gmail.com','03-01-1985');
INSERT INTO  member (Id_member,Nama_member,No_hp,email,Tgl_lahir) VALUES('MM0113','Ari','081267867543','Ari2016@gmail.com','24-11-1983');
INSERT INTO  member (Id_member,Nama_member,No_hp,email,Tgl_lahir) VALUES('MM0114','Rahmi','085267935678','Rahmi2016@gmail.com','01-09-1981');
INSERT INTO  member (Id_member,Nama_member,No_hp,email,Tgl_lahir) VALUES('MM0115','Fahmi','085767298908','Fahmi2016@gmail.com','15-07-1986');
INSERT INTO  member (Id_member,Nama_member,No_hp,email,Tgl_lahir) VALUES('MM0116','Rusli','085643755398','Rusli2016@gmail.com','26-02-1988');
INSERT INTO  member (Id_member,Nama_member,No_hp,email,Tgl_lahir) VALUES('MM0117','Doni','081398426789','Doni2016@gmail.com','17-04-1986');
INSERT INTO  member (Id_member,Nama_member,No_hp,email,Tgl_lahir) VALUES('MM0118','Tati','085245289074','Tati2016@gmail.com','22-06-1985');
INSERT INTO  member (Id_member,Nama_member,No_hp,email,Tgl_lahir) VALUES('MM0119','Dono','081287234567','Dono2016@gmail.com','03-07-1990');
INSERT INTO  member (Id_member,Nama_member,No_hp,email,Tgl_lahir) VALUES('MM0120','Joko','081223670942','Joko2016@gmail.com','19-07-1988');


INSERT INTO  transaksi
(kode_pemesanan,Id_member,Id_jadwal,id_inventaris,Tanggal,Status) VALUES('P10001','MM0111','JT001','IN110','15-12-2019','pesan');
INSERT INTO  transaksi
(kode_pemesanan,Id_member,Id_jadwal,id_inventaris,Tanggal,Status) VALUES('P10002','MM0112','JT006','IN109','16-12-2019','pesan');
INSERT INTO  transaksi
(kode_pemesanan,Id_member,Id_jadwal,id_inventaris,Tanggal,Status) VALUES('P10003','MM0113','JT008','IN111','17-12-2019','pesan');
INSERT INTO  transaksi
(kode_pemesanan,Id_member,Id_jadwal,id_inventaris,Tanggal,Status) VALUES('P10004','MM0114','JT001','IN107','18-12-2019','pesan');
INSERT INTO  transaksi
(kode_pemesanan,Id_member,Id_jadwal,id_inventaris,Tanggal,Status) VALUES('P10005','MM0115','JT006','IN106','19-12-2019','pesan');
INSERT INTO  transaksi
(kode_pemesanan,Id_member,Id_jadwal,id_inventaris,Tanggal,Status) VALUES('P10006','MM0116','JT001','IN101','20-12-2019','bayar');
INSERT INTO  transaksi
(kode_pemesanan,Id_member,Id_jadwal,id_inventaris,Tanggal,Status) VALUES('P10007','MM0117','JT008','IN111','21-12-2019','pesan');
INSERT INTO  transaksi
(kode_pemesanan,Id_member,Id_jadwal,id_inventaris,Tanggal,Status) VALUES('P10008','MM0118','JT001','IN103','22-12-2019','pesan');
INSERT INTO  transaksi
(kode_pemesanan,Id_member,Id_jadwal,id_inventaris,Tanggal,Status) VALUES('P10009','MM0119','JT006','IN104','23-12-2019','pesan');
INSERT INTO  transaksi
(kode_pemesanan,Id_member,Id_jadwal,id_inventaris,Tanggal,Status) VALUES('P10010','MM0120','JT008','IN112','24-12-2019','checkin');
