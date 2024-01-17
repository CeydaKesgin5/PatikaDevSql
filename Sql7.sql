SELECT customer_id, SUM(amount)FROM payment
GROUP BY customer_id
HAVING SUM(amount) >100
ORDER BY SUM(amount) DESC 
LIMIT 1;
--satýr bazlý koþul-where
--grup bazlý koþul having

--1.film tablosunda bulunan filmleri rating deðerlerine göre gruplayýnýz.
SELECT rating FROM film
GROUP BY rating;

--2.film tablosunda bulunan filmleri replacement_cost sütununa göre grupladýðýmýzda 
film sayýsý 50 den fazla olan replacement_cost deðerini ve karþýlýk gelen film sayýsýný sýralayýnýz.
SELECT replacement_cost, COUNT(*)FROM film
GROUP BY  replacement_cost
HAVING COUNT(*)>50;

--3. customer tablosunda bulunan store_id deðerlerine karþýlýk gelen müþteri sayýlarýný nelerdir?
SELECT store_id, COUNT(customer_count) FROM customer
GROUP BY store_id;

--4. city tablosunda bulunan þehir verilerini country_id sütununa göre gruplandýrdýktan 
sonra en fazla þehir sayýsý barýndýran country_id bilgisini ve þehir sayýsýný paylaþýnýz.
SELECT country_id, COUNT(city_count), FROM city
GROUP BY country_id 
ORDER BY COUNT() DESC
LIMIT 1;