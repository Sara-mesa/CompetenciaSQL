use Chinookk
/*--1. Encuentre el n�mero total de facturas (invoices) de cada cliente junto con el nombre completo, la
ciudad y el correo electr�nico de cada uno. Despu�s de ejecutar la consulta descrita anteriormente, 
�cu�l es la direcci�n de correo electr�nico de la quinta persona, Franti�ek Wichterlov�?*/

select c.firstname
,c.lastname
,c.city
,c.email
,COUNT( i.invoiceid) as 'total invoices'
from Customer c
left join Invoice i on c.customerid = i.customerid
group by c.firstname,c.lastname,c.city,c.email
;
/*2. Recupere el nombre de la pista, el �lbum, el ID del artista (artistID) y el ID de la pista 
(trackID) para todos los �lbumes. �Cu�l es el t�tulo de la canci�n con trackID 12 del �lbum 
"For Those About to Rock We Salute You"?*/

select a.title as album_title
--, a.Artistid
,ar.name as artist_name 
, t.Trackid
, t.name as track_name
from Album a
left join Track t on a.albumid = a.albumid
left join Artist as ar on a.albumid = ar.artistid
where a.title = 'For Those About to Rock We Salute You'  and t.trackid='12'
;
/*3. Encuentra el nombre y el ID de los artistas que no tienen �lbumes. Despu�s de ejecutar la 
consulta descrita anteriormente, dos de los registros devueltos tienen el mismo apellido. 
Diga cu�l es.*/


