#### Creacte a sqlite db from flat file
# library(sqldf)
# ConReactomeFI<- dbConnect(SQLite(), dbname="reactomeFI.sqlite")
# dfversion2014 <- read.table("2014.txt", header=TRUE, sep = "\t")
# dbWriteTable(conn = ConReactomeFI, name = "Version2014", value = dfversion2014)

## dbListTables(conn = ConReactomeFI)
## Connect to sqlite db
## con <- dbConnect(dbDriver("SQLite"), dbname= "inst/extdata/FIsInGene_031516_with_annotations.sqlite")
## df <- dbReadTable(conn=con,name="Direction")


#' Gene-Gene Function Interaction Annotation - Direction and Type of interaction
#' @return  a dataframe with 5 columns: gene1 gene1 Annotation Direction Score
#' @export
#' @usage ld_reactomeFI(version)
#' @param version 2014, 2015
#'
#' @examples
#'
#' ## list the contents that are loaded into memory
#'  df <- ld_reactomeFI(version= 2015)
#'
#' @keywords annotation
#' @keywords Data
#' @keywords Reactome
#' @importFrom DBI dbConnect dbReadTable dbDriver
#' @importFrom RSQLite SQLite
#'
ld_reactomeFI <- function(version)
{
  path <- paste0(system.file("extdata", package= "reactomeFI"))
  sqlfile <- paste0(path,"/reactomeFI.sqlite", sep="")
  con <- DBI::dbConnect(dbDriver("SQLite"), dbname= sqlfile)
  versionName <- paste0("Version",version, sep="")
  df <- DBI::dbReadTable(conn=con,name= versionName)
  return(df)
}
