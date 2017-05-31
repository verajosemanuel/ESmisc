% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/geocode_cadastral.R
\name{geocode_cadastral}
\alias{geocode_cadastral}
\title{geocode by longitude and latitude from cadastral references.}
\usage{
geocode_cadastral(x, parse_files)
}
\arguments{
\item{x}{A valid spanish cadastral reference.}

\item{parse_files}{boolean. Set to TRUE if source are KLM files from catastro.}
}
\description{
Get longitude/latitude from valid cadastral ref. or kml files from catastro.
}
\examples{
## cadastral reference number as source data ##

geocode_cadastral("0636105UF3403N", parse_files = FALSE)

> "36.5209422288168,-4.89298751473745"

## folder as source data. Process each klm file ##

files <- list.files("folder", full.names = T)

for (f in files) {
 coords <- geocode_cadastral(f, parse_files = TRUE)
 d <- as.data.frame(rbind(df , as.data.frame(coords, stringsAsFactors = F )))
}

# separate lat/lon into columns
d <- tidyr::separate(coords, into = c("longitude","latitude"), sep = "," )

}
\keyword{cadastral}
\keyword{cadastre,}
\keyword{geocoding,}
\keyword{latitude,}
\keyword{longitude,}
\keyword{reference}