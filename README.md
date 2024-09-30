# HelloStavanger 2024 - your map in your app

## Web - Maplibre GL JS

Run web examples by running a web server in the root directory and navigate to the web-directories in a browser.
```
npm i -g serve
serve
```

Examples:
* web-01-rastertiles. Maplibre GL JS web page with raster tiles from Kartverket.
* web-02-geojson. Same as above, but add some data using GeoJSON. Can create GeoJSON in your app or a tool like https://geojson.io/
* web-03-vector-tiles. 
  * Download Norway N50 Kartdata as FGDB from https://kartkatalog.geonorge.no/metadata/n50-kartdata/ea192681-d039-42ec-b1bc-f3ce04c189ac
  * `ogr2ogr -f MVT -dsco MAXZOOM=10 tiles/ Basisdata_0000_Norge_25833_N50Kartdata_FGDB.gdb N50_Høyde_senterlinje`

## iOS - Maplibre Native

Example:
* iOS. Example iOS app with Maplibre Native.
