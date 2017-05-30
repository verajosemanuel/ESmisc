# ESmisc: R package for functions on spanish data

### Installation:
 ```
devtools::install_github("verajosemanuel/ESmisc")
```
There's some special data in spain that's not addressed by any R package or function.
This package is my humble (and objectionable) attempt of helping programmers working with this kind of data.

### to_number()
First provided function is **to_number()**, a quick & dirty function to translate spanish spelled monetary quantities to their numerical counterparts.
Given a numerical quantity spelled in spanish **to_number** translates it to integer.

```
to_number("dosmil ciento cuarenta y ocho")
[1] 2148
```
This function can be used on dataframes with lapply. Try the provided example dataframe (cantidades).
```
cantidades$var3 <- lapply(cantidades$var2, to_number)
```
### Requirements: 
- magrittr must be installed
- Text must be previously cleaned & removed extraneous words or symbols. 
- Cents must be removed. (in my TO DO list to overcone this limit)
- Quantities MUST be written in a correct Spanish (this is not a grammar tool).
- The upper limit is up to the millions range. 

## NEXT:

Working on a new function to get geocoded data (Lat/Lon) from Cadastral References.


