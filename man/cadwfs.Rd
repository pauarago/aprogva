\name{cadwfs}
\alias{cadwfs}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Download cadastral parcels from "http://ovc.catastro.meh.es/INSPIRE/wfsCP.aspx" form Spanish National Cadastrel Service
}
\description{
Download cadastral parcels from "http://ovc.catastro.meh.es/INSPIRE/wfsCP.aspx" a wvfs service from Spanish National Cadastrel Service
}
\usage{
cadwfs(refCad, loadParcel=TRUE, dsn)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{refCad}{
Cadastral reference length of 14 digits something like 00000A00000000
}
  \item{loadParcel}{
Load parcel downloaded in the active R session, by defout TRUE
}
  \item{dsn}{
Data source name, folder to store the parcels downloaded
}
}
\value{
Empty item reurned
}
\references{
For mor information about catstro API visit http://www.catastro.minhap.es/webinspire/index.html
}
\author{
Pau Aragó Galidno arago_pau@gva.es
}
\note{
This package was build ofr internal use in Forestry Section from "Direcció Territorial Conselleria de Conselleria d'Agricultura, Desenvolupament Rural, Emergència Climàtica i Transició Ecològica". Nevertheless it could be useful for other purpouses
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\examples{


## The function is currently defined as
 refCat="12018A00100276"
  mydsn=getwd()
  out<-tryCatch({
    #download parcel
    parcel<-cadwfs(refCat, dsn=mydsn)
    },error=function(myerror){
    #catch error when de cadastral reference is wrong
    out<-"error in cadastral reference, no parcel for this cadastral reference"
    return(out)
  }
  )
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{cadaster}
\keyword{wfs}
