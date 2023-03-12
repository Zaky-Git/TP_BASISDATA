create table mahasiswa(
    id VARCHAR(50) PRIMARY KEY,
    nama VARCHAR(50),
    tempat_Lahir VARCHAR(50),
    tanggal_Lahir DATE,
    nomor_HP VARCHAR(50),
    email VARCHAR(50),
    tinggi_Badan DECIMAL(5,2),
    berat_Badan DECIMAL(5,2));
    
    
INSERT INTO mahasiswa 
VALUES ('001', 'Budi', 'Jakarta', TO_DATE('01-01-1999', 'DD-MM-YYYY'), '081234567890', 'budi@gmail.com', 170.0, 65.0);

INSERT INTO mahasiswa
VALUES ('002', 'Citra', 'Bandung', TO_DATE('15-02-1998', 'DD-MM-YYYY'), '082345678901', 'citra@gmail.com', 160.0, 50.0);

INSERT INTO mahasiswa
VALUES ('003', 'Dewi', 'Surabaya', TO_DATE('20-03-2000', 'DD-MM-YYYY'), '083456789012', 'dewi@gmail.com', 165.0, 55.0);

INSERT INTO mahasiswa
VALUES ('004', 'Eko purwodadi', 'Yogyakarta', TO_DATE('10-04-1997', 'DD-MM-YYYY'), '084567890123', 'eko@gmail.com', 175.0, 75.0);

INSERT INTO mahasiswa 
VALUES ('005', 'Fina g bastian', 'Semarang', TO_DATE('05-05-1995', 'DD-MM-YYYY'), '085678901234', 'fina@gmail.com', 155.0, 45.0);

INSERT INTO mahasiswa 
VALUES ('006', 'Gita bustomi', 'Solo', TO_DATE('25-06-2001', 'DD-MM-YYYY'), '086789012345', 'gita@gmail.com', 160.0, 50.0);

INSERT INTO mahasiswa 
VALUES ('007', 'Hani', 'Malang', TO_DATE('17-07-1996', 'DD-MM-YYYY'), '087890123456', 'hani@gmail.com', 170.0, 60.0);

INSERT INTO mahasiswa
VALUES ('008', 'Indra Kurnia', 'Jakarta', TO_DATE('08-08-1999', 'DD-MM-YYYY'), '088901234567', 'indra@gmail.com', 175.0, 70.0);

INSERT INTO mahasiswa
VALUES ('009', 'Joko anwar', 'Bandung', TO_DATE('30-09-1994', 'DD-MM-YYYY'), '089012345678', 'joko@gmail.com', 180.0, 60.0);

INSERT INTO mahasiswa 
VALUES ('010', 'Kartika', 'Yogyakarta', TO_DATE('1989-11-25', 'YYYY-MM-DD'), '089012345178', 'kartika@gmail.com', 160.0, 50.0);

INSERT INTO mahasiswa
VALUES ('011', 'Mira', 'Medan', TO_DATE('1987-01-01', 'YYYY-MM-DD'), '089012345628', 'mira@gmail.com', 165.0, 62.0);

INSERT INTO mahasiswa
VALUES ('012', 'Miri', 'Medan', TO_DATE('1977-02-02', 'YYYY-MM-DD'), '089212345678', 'miri@gmail.com', 166.0, 61.0);

INSERT INTO mahasiswa
VALUES ('013', 'Sul', 'Sul', TO_DATE('1982-06-04', 'YYYY-MM-DD'), '089012345618', 'Sul@gmail.com', 175.0, 64.0);

INSERT INTO mahasiswa
VALUES ('014', 'Suep', 'Bali', TO_DATE('1981-03-01', 'YYYY-MM-DD'), '089012345638', 'Suep@gmail.com', 155.0, 62.0);

INSERT INTO mahasiswa
VALUES ('015', 'Novi', 'Sampit', TO_DATE('1988-05-07', 'YYYY-MM-DD'), '089012345672', 'Novi@gmail.com', 185.0, 63.0);

select lower(nama) lower, initcap(nama) initcap, concat(nama,tempat_Lahir) nama_TempatLahir, length(nama) panjang_Nama, SUBSTR(nama,0,3) tiga_Huruf_Nama,
LPAD(id,6,'-') LPAD, LTRIM(id,'0') LTRIM, RTRIM(email,'@') RTRIM, INSTR(nama,'B') INSTR, REPLACE(email,'@gmail.com','@yahoo.com') Replace_gmail_yahoo from mahasiswa;

SELECT nama, TO_CHAR(tanggal_lahir, 'MM MON MONTH') "MM/MON/MONTH", TO_CHAR(tanggal_lahir, 'DD') "DD", TO_CHAR(tanggal_lahir, 'YYYY/YY/RR') "YYYY/YY/RR",
TO_CHAR(tanggal_lahir,'AM/HH/HH24') AM, to_char(tanggal_lahir,'MI/SS') "MI/SS", ADD_MONTHS(tanggal_lahir,1) add_month, SYSDATE waktu_sekarang,  LAST_DAY(tanggal_lahir) LAST_DAY,
NEXT_DAY(tanggal_lahir,'saturday') next_day
FROM mahasiswa;

SELECT to_number(id) char_to_num, to_char(tanggal_lahir) date_to_num, to_char(tinggi_badan) desimal_to_char from mahasiswa;

select abs(5) abs, mod(tinggi_Badan,berat_Badan) mod, floor(5) floor, power(tinggi_Badan,5) power,  ceil(5) ceil from mahasiswa;