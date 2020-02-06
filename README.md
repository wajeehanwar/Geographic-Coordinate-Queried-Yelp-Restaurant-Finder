<h1 align="center">
  <br>
  Geographic Coordinate Queried Yelp Restaurant Finder 
  <br>
</h1>

<p align="center">
<a href="#overview">Overview</a> •
  <a href="#how-to-use">How To Use</a> •
  <a href="#credits">Credits</a> •
  <a href="#license">License</a>
</p>

## Overview

A java program that accepts database credentials, and then accepts a listing number for one apartment. The program then queries the [Yelp](https://www.yelp.com) defined businesses in Las Vegas and, for each restaurant within 200 meters of the apartment, displays the name, rating, and number of reviews of each such restaurant, but only if there are at least 10 reviews. A restaurant is a business with category 'Restaurants' assigned to it.

## How To Use

For Oracle run with:

```bash
 $ java -classpath ojdbc6.jar;

 # Use ':' instead of ';' on UNIX

 # **Note**: change the variable oracleServer to "localhost"
 # for use with a tunnel.
```

## Credits

- Yelp

This software was developed using the following:

- Java
- SQL
- Oracle

## License

MIT

---

> GitHub [@wajeehanwar](https://github.com/wajeehanwar)
