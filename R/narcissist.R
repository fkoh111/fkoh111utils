#' Check pkg stats on CRAN
#' 
#' @param pkg The name of the package which stats you want to obtain
#' 
#' @param from The start date for fetched figures
#' 
#' @export
#' @return Returns a dataframe with results
#' 
#' @examples
#' \dontrun{
#' narcissist(pkg = "zzlite", from = "2020-02-25")
#' }

narcissist <- function(pkg, from) {
  log <- cranlogs::cran_downloads(packages = pkg,
                                  from = from,
                                  to = format(Sys.Date(), "%Y-%m-%d"))

    out <- data.frame(total = sum(log[['count']]),
                      avg = round(mean(log[['count']])),
                      from = min(log[['date']]),
                      to = max(log[['date']]),
                      stringsAsFactors = FALSE
                       )
    return(out)
}