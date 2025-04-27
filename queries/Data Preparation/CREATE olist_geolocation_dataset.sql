CREATE TABLE olist_geolocation_dataset_new (
    geolocation_zip_code_prefix TEXT,
	geolocation_lat REAL,
	geolocation_lng REAL,
	geolocation_city TEXT,
	geolocation_state TEXT
);

INSERT INTO olist_geolocation_dataset_new (geolocation_zip_code_prefix, geolocation_lat, geolocation_lng, geolocation_city, geolocation_state)
SELECT CAST(geolocation_zip_code_prefix AS TEXT), geolocation_lat, geolocation_lng, geolocation_city, geolocation_state
FROM olist_geolocation_dataset;

DROP TABLE olist_geolocation_dataset;
ALTER TABLE olist_geolocation_dataset_new RENAME TO olist_geolocation_dataset;
