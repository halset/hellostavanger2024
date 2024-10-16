# HelloStavanger 2024 - your map in your app

## Things to install

* Web server for examples. `npm i -g serve`.
* GDAL (with OGR) to convert data. `brew install gdal` on mac. `apt install gdal-bin` on Ubuntu.
* PostgreSQL with PostGIS.
* Martin tile server. https://maplibre.org/martin/quick-start.html

## Create PostgreSQL db with PostGIS

  * `createuser -P hellostavanger`
  * `createdb -O hellostavanger hellostavanger`
  * `hellostavanger=# create extension postgis` as postgres super user

## Web - Maplibre GL JS

Run web examples by running a web server in the root directory and navigate to the web-directories in a browser.
```
npm i -g serve
serve
```

For the examples that use martin tile server, start that as well in a separate terminal window.
```
martin -c martin.yaml
```

Examples:
* web-01-rastertiles. Maplibre GL JS web page with raster tiles from Kartverket.
* web-02-geojson. Same as above, but add some data using GeoJSON. Can create GeoJSON in your app or a tool like https://geojson.io/
* web-03-vector-tiles. Vector tiles from a directory structure.
  * Download Norway N50 Kartdata as FGDB from https://kartkatalog.geonorge.no/metadata/n50-kartdata/ea192681-d039-42ec-b1bc-f3ce04c189ac
  * `ogr2ogr -f MVT -dsco MAXZOOM=10 tiles/ Basisdata_0000_Norge_25833_N50Kartdata_FGDB.gdb N50_Høyde_senterlinje`
* web-04-vector-tiles-martin. Vector tiles from PostgreSQL + PostGIS with martin tile server.
  * Same Norway N50 Kartdata as FGDB as with web-03-vector-tiles.
  * `ogr2ogr -f PostgreSQL -t_srs "EPSG:4326" PG:"host=localhost user=hellostavanger dbname=hellostavanger password=hellostavanger schemas=public" Basisdata_0000_Norge_25833_N50Kartdata_FGDB.gdb -nln hoyde2 N50_Høyde_senterlinje`

## iOS - Maplibre Native

Example:
* iOS. Example iOS app with Maplibre Native. Switch out `styleURL` in ContentView.swift to try with different maps. 
