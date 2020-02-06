/**
 * <h1>Find Restaurants</h1>
 * A java program that accepts database credentials, and then accepts a listing number for one
 * apartment. The program then queries the businesses in Las Vegas and, for each restaurant
 * within 200 meters of the apartment, displays the name, rating, and number of reviews of
 * each such restaurant, but only if there are at least 10 reviews. A restaurant is a
 * business with category 'Restaurants' assigned to it.
 * <p>
 * <b>Note:</b> Only SQL.
 *
 * @author  Wajeeh Anwar
 * @version 1.0
 * @since   2018-11-20
 */


 SELECT b.name, b.stars, b.review_count
 FROM yelp_db.business b, yelp_db.category c
 WHERE b.id = c.business_id AND b.city = 'Las Vegas' AND b.state = 'NV' AND c.category = 'Restaurants'
 AND 200 > (SELECT sdo_geom.sdo_distance (sdo_geometry (2001, 4326, null, sdo_elem_info_array(1, 1, 1), sdo_ordinate_array(
                                            (SELECT a.latitude
                                              FROM yelp_db.apartments a
                                              WHERE a.listing = 25),
                                            (SELECT a.longitude
                                              FROM yelp_db.apartments a
                                              WHERE a.listing = 25)
                                          )), sdo_geometry (2001,4326, null, sdo_elem_info_array(1, 1, 1), sdo_ordinate_array(b.latitude, b.longitude)), 1, 'unit=M') distance_m
                                          FROM dual)
 GROUP BY b.name, b.stars, b.review_count
 HAVING b.review_count > 9;
