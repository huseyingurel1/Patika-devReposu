# HOMEWORK1 


## Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

-- film tablosunda bulunan title ve description sütunlarındaki verileri sıralayınız.

       SELECT title, description FROM film ; 

-- film tablosunda bulunan tüm sütunlardaki verileri film uzunluğu (length) 60 dan büyük VE 75 ten küçük olma koşullarıyla sıralayınız.

      SELECT * FROM film WHERE length BETWEEN 60 AND 75;  
      
-- film tablosunda bulunan tüm sütunlardaki verileri rental_rate 0.99 VE replacement_cost 12.99 VEYA 28.99 olma koşullarıyla sıralayınız.

      SELECT * FROM film WHERE rental_rate = 0.99 AND replacement_cost IN (12.99 , 28.99); 
      
-- customer tablosunda bulunan first_name sütunundaki değeri 'Mary' olan müşterinin last_name sütunundaki değeri nedir?

      SELECT last_name FROM customer WHERE first_name = 'Mary' ;  

-- film tablosundaki uzunluğu(length) 50 ten büyük OLMAYIP aynı zamanda rental_rate değeri 2.99 veya 4.99 OLMAYAN verileri sıralayınız.

      SELECT * FROM film WHERE NOT (length > 50) AND NOT(rental_rate IN(2.99, 4.99));




# HOMEWORK2


## Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

-- film tablosunda bulunan tüm sütunlardaki verileri replacement cost değeri 12.99 dan büyük eşit ve 16.99 küçük olma koşuluyla sıralayınız ( BETWEEN - AND yapısını kullanınız.)
 
      SELECT * FROM film WHERE replacement_cost BETWEEN 12.99 AND 16.98 ; 
 
-- .actor tablosunda bulunan first_name ve last_name sütunlardaki verileri first_name 'Penelope' veya 'Nick' veya 'Ed' değerleri olması koşuluyla sıralayınız. ( IN operatörünü kullanınız.)
      
      SELECT first_name, last_name FROM actor WHERE first_name IN ('Penelope','Nick', 'Ed') ;      

-- film tablosunda bulunan tüm sütunlardaki verileri rental_rate 0.99, 2.99, 4.99 VE replacement_cost 12.99, 15.99, 28.99 olma koşullarıyla sıralayınız. ( IN operatörünü kullanınız.)

      SELECT * FROM film WHERE rental_rate IN (0.99, 2.99, 4.99) AND replacement_cost IN ( 12.99, 15.99, 28.99 ) ;
      
      
      
      
# HOMEWORK3

## Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

-- country tablosunda bulunan country sütunundaki ülke isimlerinden 'A' karakteri ile başlayıp 'a' karakteri ile sonlananları sıralayınız.

       SELECT * FROM country WHERE country LIKE 'A%a';

-- country tablosunda bulunan country sütunundaki ülke isimlerinden en az 6 karakterden oluşan ve sonu 'n' karakteri ile sonlananları sıralayınız.
       
       SELECT * FROM country WHERE country ILIKE '%_____n';

-- film tablosunda bulunan title sütunundaki film isimlerinden en az 4 adet büyük ya da küçük harf farketmesizin 'T' karakteri içeren film isimlerini sıralayınız.
       
       SELECT title FROM film WHERE title ILIKE '%t%t%t%t%' ;

-- film tablosunda bulunan tüm sütunlardaki verilerden title 'C' karakteri ile başlayan ve uzunluğu (length) 90 dan büyük olan ve rental_rate 2.99 olan verileri sıralayınız.

       SELECT * FROM film WHERE (title LIKE 'C%') AND ( length > 90) AND (rental_rate = 2.99) ;



# HOMEWORK4


## Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

-- film tablosunda bulunan replacement_cost sütununda bulunan birbirinden farklı değerleri sıralayınız.

       SELECT DISTINCT(replacement_cost) FROM film;

-- film tablosunda bulunan replacement_cost sütununda birbirinden farklı kaç tane veri vardır?

       SELECT COUNT(DISTINCT replacement_cost) FROM film;
       
-- film tablosunda bulunan film isimlerinde (title) kaç tanesini T karakteri ile başlar ve aynı zamanda rating 'G' ye eşittir?
       
       SELECT COUNT(*) FROM film WHERE title LIKE 'T%' AND rating = 'G';
       
-- country tablosunda bulunan ülke isimlerinden (country) kaç tanesi 5 karakterden oluşmaktadır?
       
       SELECT COUNT(*) FROM country WHERE country LIKE '_____';
       
-- city tablosundaki şehir isimlerinin kaç tanesi 'R' veya r karakteri ile biter?
 
       SELECT COUNT(*) FROM city WHERE city ILIKE '%r';



# HOMEWORK5 


## Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

-- film tablosunda bulunan ve film ismi (title) 'n' karakteri ile biten en uzun (length) 5 filmi sıralayınız.
       
       SELECT * FROM film WHERE (title LIKE '%n') ORDER BY length DESC LIMIT 5;

-- film tablosunda bulunan ve film ismi (title) 'n' karakteri ile biten en kısa (length) ikinci(6,7,8,9,10) 5 filmi(6,7,8,9,10) sıralayınız.

       SELECT * FROM film WHERE (title LIKE '%n') ORDER BY length OFFSET 5 LIMIT 5;

-- customer tablosunda bulunan last_name sütununa göre azalan yapılan sıralamada store_id 1 olmak koşuluyla ilk 4 veriyi sıralayınız.
       
       SELECT * FROM customer WHERE store_id = 1  ORDER BY last_name DESC LIMIT 4; 


# HOMEWORK6


## Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

-- film tablosunda bulunan rental_rate sütunundaki değerlerin ortalaması nedir?
       
       SELECT AVG(rental_rate) FROM film;

-- film tablosunda bulunan filmlerden kaç tanesi 'C' karakteri ile başlar?

       SELECT COUNT(*) FROM film WHERE title LIKE 'C%';
       
-- film tablosunda bulunan filmlerden rental_rate değeri 0.99 a eşit olan en uzun (length) film kaç dakikadır?

       SELECT length FROM film WHERE rental_rate = 0.99 ORDER BY length DESC LIMIT 1;
       
-- film tablosunda bulunan filmlerin uzunluğu 150 dakikadan büyük olanlarına ait kaç farklı replacement_cost değeri vardır?

       SELECT COUNT (DISTINCT replacement_cost) FROM  film WHERE length >150;


# HOMEWORK7


## Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

-- film tablosunda bulunan filmleri rating değerlerine göre gruplayınız.
 
       SELECT * FROM film GROUP BY rating;
       
-- film tablosunda bulunan filmleri replacement_cost sütununa göre grupladığımızda film sayısı 50 den fazla olan replacement_cost değerini ve karşılık gelen film sayısını sıralayınız.
       
       SELECT replacement_cost,COUNT(replacement_cost) FROM film GROUP BY replacement_cost HAVING COUNT(replacement_cost) > 50;

-- customer tablosunda bulunan store_id değerlerine karşılık gelen müşteri sayılarını nelerdir? 

       SELECT store_id, COUNT(store_id) FROM customer GROUP BY store_id;
       
-- city tablosunda bulunan şehir verilerini country_id sütununa göre gruplandırdıktan sonra en fazla şehir sayısı barındıran country_id bilgisini ve şehir sayısını paylaşınız.
       SELECT country_id, COUNT(country_id) FROM city GROUP BY country_id ORDER BY count DESC LIMIT 1;
       
       
       
       
# HOMEWORK8      
       

-- test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.
    
       CREATE TABLE employee (
   
           id INTEGER ,
           name VARCHAR(50),
           birthday DATE,
           email VARCHAR(100)    
       )

-- Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
       insert into employee (id, name, birthday, email) values (1, 'Winna', '6/25/1993', 'wbenza0@yelp.com');
       insert into employee (id, name, birthday, email) values (2, 'Everett', '6/30/2022', 'ecrosseland1@rediff.com');
       insert into employee (id, name, birthday, email) values (3, 'Lishe', '12/24/2017', 'lloughren2@chron.com');
       insert into employee (id, name, birthday, email) values (4, 'Cristin', '12/24/2005', 'cbrockwell3@nih.gov');
       insert into employee (id, name, birthday, email) values (5, 'Lukas', '11/13/2018', 'lvause4@amazon.com');
       insert into employee (id, name, birthday, email) values (6, 'Bryant', '1/24/2019', 'bcarefull5@lulu.com');
       insert into employee (id, name, birthday, email) values (7, 'Phillis', '5/27/2020', 'pcowen6@smh.com.au');
       insert into employee (id, name, birthday, email) values (8, 'Janella', '2/4/1996', 'jskivington7@redcross.org');
       insert into employee (id, name, birthday, email) values (9, 'Carissa', '5/1/2014', 'cantonioni8@examiner.com');
       insert into employee (id, name, birthday, email) values (10, 'Worthy', '11/7/1991', 'wspellsworth9@npr.org');
       insert into employee (id, name, birthday, email) values (11, 'Eimile', '1/16/2000', 'edeernessa@blogtalkradio.com');
       insert into employee (id, name, birthday, email) values (12, 'Colman', '4/24/2010', 'cmeffinb@51.la');
       insert into employee (id, name, birthday, email) values (13, 'Sammie', '7/23/1991', 'sganniclifftc@hubpages.com');
       insert into employee (id, name, birthday, email) values (14, 'Orion', '9/5/1995', 'oglamartd@plala.or.jp');
       insert into employee (id, name, birthday, email) values (15, 'Estrellita', '3/21/2022', 'earelese@istockphoto.com');
       insert into employee (id, name, birthday, email) values (16, 'Katrine', '1/11/2008', 'kdonatf@plala.or.jp');
       insert into employee (id, name, birthday, email) values (17, 'Constantina', '5/6/1994', 'cmuneelyg@bloomberg.com');
       insert into employee (id, name, birthday, email) values (18, 'Wayne', '8/18/2011', 'whooksh@moonfruit.com');
       insert into employee (id, name, birthday, email) values (19, 'Carl', '10/15/2000', 'cmcmurtyi@tuttocitta.it');
       insert into employee (id, name, birthday, email) values (20, 'Kain', '11/28/2000', 'kdudeneyj@yelp.com');
       insert into employee (id, name, birthday, email) values (21, 'Munmro', '10/17/2011', 'mbarockk@addthis.com');
       insert into employee (id, name, birthday, email) values (22, 'Merry', '1/21/2014', 'mfilkinl@github.com');
       insert into employee (id, name, birthday, email) values (23, 'Isa', '1/13/2020', 'iouslemm@163.com');
       insert into employee (id, name, birthday, email) values (24, 'Dreddy', '1/16/2002', 'dgerrietn@mayoclinic.com');
       insert into employee (id, name, birthday, email) values (25, 'Errol', '6/2/1999', 'erolfo@ustream.tv');
       insert into employee (id, name, birthday, email) values (26, 'Ricky', '7/5/1992', 'rnewlingp@army.mil');
       insert into employee (id, name, birthday, email) values (27, 'Crin', '10/2/2016', 'csayreq@xinhuanet.com');
       insert into employee (id, name, birthday, email) values (28, 'Clim', '5/31/2022', 'cgregolinr@nifty.com');
       insert into employee (id, name, birthday, email) values (29, 'Elisabeth', '2/9/2021', 'ejantels@facebook.com');
       insert into employee (id, name, birthday, email) values (30, 'Rodi', '4/14/1992', 'rmartensent@addtoany.com');
       insert into employee (id, name, birthday, email) values (31, 'Morie', '8/20/2006', 'mwhitseyu@twitpic.com');
       insert into employee (id, name, birthday, email) values (32, 'Cheston', '7/1/1992', 'cbeefonv@disqus.com');
       insert into employee (id, name, birthday, email) values (33, 'Charlene', '12/6/1998', 'cgrierw@woothemes.com');
       insert into employee (id, name, birthday, email) values (34, 'Lonny', '11/27/2006', 'lelwoodx@shutterfly.com');
       insert into employee (id, name, birthday, email) values (35, 'Patricia', '7/6/1994', 'praffertyy@mac.com');
       insert into employee (id, name, birthday, email) values (36, 'Dolly', '6/1/2006', 'dmiltonz@jalbum.net');
       insert into employee (id, name, birthday, email) values (37, 'Nadiya', '4/20/2012', 'nmaccahee10@twitpic.com');
       insert into employee (id, name, birthday, email) values (38, 'Lynelle', '11/12/1996', 'lweatherburn11@twitpic.com');
       insert into employee (id, name, birthday, email) values (39, 'Iolande', '3/6/1991', 'ichatelet12@comsenz.com');
       insert into employee (id, name, birthday, email) values (40, 'Josephine', '6/4/2022', 'jwann13@posterous.com');
       insert into employee (id, name, birthday, email) values (41, 'Susanne', '2/23/2015', 'sreay14@bloglines.com');
       insert into employee (id, name, birthday, email) values (42, 'Carolyn', '11/1/2016', 'cliepina15@goo.ne.jp');
       insert into employee (id, name, birthday, email) values (43, 'Danni', '10/7/2020', 'dhallewell16@elegantthemes.com');
       insert into employee (id, name, birthday, email) values (44, 'Jobye', '9/7/2019', 'jfaust17@chronoengine.com');
       insert into employee (id, name, birthday, email) values (45, 'Kathye', '2/9/1998', 'krickis18@photobucket.com');
       insert into employee (id, name, birthday, email) values (46, 'Corilla', '11/13/2016', 'cgamlyn19@wikimedia.org');
       insert into employee (id, name, birthday, email) values (47, 'Wilow', '11/20/1999', 'wgreswell1a@blinklist.com');
       insert into employee (id, name, birthday, email) values (48, 'Maxi', '5/5/2018', 'mloweth1b@dedecms.com');
       insert into employee (id, name, birthday, email) values (49, 'Louis', '9/19/2009', 'lfenimore1c@ustream.tv');
       insert into employee (id, name, birthday, email) values (50, 'Enriqueta', '1/25/2009', 'efotheringham1d@bloglines.com');
       
-- Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.

       UPDATE employee SET name = 'Ahmet' WHERE id = 1 ;
       UPDATE employee SET name = 'Mehmet' WHERE id = 1 ;
       UPDATE employee SET name = 'Hüseyin' WHERE id = 1 ;



-- Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.
       
       DELETE FROM employee WHERE id=1;
       
       
       
