#' @export
#' @import  sf utils

cadwfs<-function(refCad, loadParcel=TRUE, dsn){
  #Descarregar de la parcelÂ·la cadastral
  urlwfs="http://ovc.catastro.meh.es/INSPIRE/wfsCP.aspx?service=wfs&version=2&request=getfeature&STOREDQUERIE_ID=GetParcel&srsname=EPSG::25830&refcat="

  #nom de la capa
  nameGML=paste(dsn,refCad,".gml", sep="")

  #construim la url per a descarregar la parcelÂ·la del portal
  urlDownload= paste(urlwfs, refCad, sep="")

  #descarreguem la parcelÂ·la del portal
  download.file(urlDownload, destfile = nameGML)

  #carreguem la parcel·la a R
  if (loadParcel==TRUE) {
    parcel=st_read(nameGML)
  }

}
