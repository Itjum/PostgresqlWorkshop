SELECT surname, customer.name, concat(destination.country, ', ', destination.city) 
AS destination, hotel.name AS hotel FROM customer
INNER JOIN destination ON customer.top_destination = destination.acronym
INNER JOIN hotel ON destination.hotel_id = hotel.id
ORDER BY surname, name, destination, hotel
