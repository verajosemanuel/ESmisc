# ESmisc: R package for functions on spanish data

### Installation: ###

 ```
devtools::install_github("verajosemanuel/ESmisc")
```

There's some special data in spain that's not addressed by any R package or function.
This package is my humble (and objectionable) attempt of helping programmers working with this kind of data.

### to_number() ###
**to_number()** is a quick & dirty function to translate spanish spelled monetary quantities to their numerical counterparts.
Given a numerical quantity spelled in spanish **to_number** translates it to integer.

```
to_number("dosmil ciento cuarenta y ocho")
[1] 2148
```
This function can be used on dataframes with lapply. Try the provided example dataframe (cantidades).
```
cantidades$var3 <- lapply(cantidades$var2, to_number)
```

### geocode_cadastral() ###
**geocode_cadastral** obtains longitude/latitude from valid cadastral references or kml files from catastro.

```
geocode_cadastral("0636105UF3403N", parse_files = FALSE)

[1] "36.5209422288168,-4.89298751473745"


# When folder is source. We process each klm file -------


 files <- list.files("folder", full.names = T)

 for (f in files) {
  coords <- geocode_cadastral(f, parse_files = TRUE)
  d <- as.data.frame(rbind(df , as.data.frame(coords, stringsAsFactors = F )))
 }

# separate lat/lon into columns ---------


 d <- tidyr::separate(coords, into = c("longitude","latitude"), sep = "," )
```


### Requirements: 
- magrittr must be installed.
- to_number() needs clean text. So it must be previously cleaned & removed extraneous words, symbols or cents. 
- Quantities MUST be written in a correct Spanish (this is not a grammar tool).
- The upper limit is up to the millions range. 
- geocode_cadastral() requests to catastro website. 

# BE WARNED: You'll be banned if many requests to catastro are made in short time. #
- Because of that geocode_cadastral() waits two seconds between requests.




