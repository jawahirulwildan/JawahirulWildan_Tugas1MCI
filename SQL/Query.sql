USE TUGAS1_MCI;

--1.Tampilkan daftar nama dan ukt berdasarkan nominal ukt yang paling mahal!
SELECT NAMA, UKT
FROM MAHASISWA
ORDER BY UKT DESC;

--2.Tampilkan daftar nama dan ukt berdasarkan nominal ukt yang paling mahal, jika ada ukt yang sama, urutkan berdasarkan nama mahasiswa secara alfabetikal.
SELECT NAMA, UKT
FROM MAHASISWA
ORDER BY UKT DESC, nama ASC;

--3.Hitunglah jumlah mahasiswa yang memiliki ipk >= 3.5 dan berada di semester 8
SELECT COUNT(NAMA) AS JUMLAH_MAHASISWA
FROM MAHASISWA
WHERE ipk >= 3.5 
AND semester = 8;

--4.Tampilkan nama, ukt, dan golongan. Jika ukt mahasiswa kurang dari sama dengan 1 juta, maka masuk golongan "A". Jika ukt mahasiswa diatas 1 juta sampai denga 2 juta, maka masuk golongan "B" Jika ukt mahasiswa diatas 2 juta, maka masuk golongan "C".
--Alter dan update tabel terlebih dahulu
ALTER TABLE MAHASISWA
ADD GOLONGAN CHAR(1);
UPDATE MAHASISWA
SET
	GOLONGAN = 'A'
WHERE
	UKT <= 1000000;
UPDATE MAHASISWA
SET
	GOLONGAN = 'B'
WHERE
	UKT >= 1000000 AND UKT <= 2000000;
UPDATE MAHASISWA
SET 
	GOLONGAN = 'C'
WHERE
	UKT >= 2000000;
--Query:	
SELECT NAMA, UKT, GOLONGAN
FROM MAHASISWA;

--5.Tampilkan daftar nama, semester dan ipk berdasarkan ipk tertinggi tiap semester. Diurutkan berdasarkan semesternya. Jika ada yang nilainya sama, maka diurutkan berdasarkan alfabet.
SELECT NAMA, SEMESTER, IPK
FROM mahasiswa
ORDER BY SEMESTER ASC, IPK DESC, NAMA ASC;