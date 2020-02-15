#' List folders from a given directory.
#' 
#' @param path The path from where you want to list folder(s)
#' 
#' @export
#' @return Returns a list of folders
#' 
#' @examples
#' \donttest{
#' list-folders("tests")
#' }

list_folders <- function(path) {
  
  if(missing(path)) {
    stop("You need to provide a path!")
  }

  res <- dir(path)[file.info(dir(path, full.names=TRUE))$isdir]
  
  if(identical(res, character(0))) {
    warning("The assigned path doesn't contain any folder(s)")
  }
  return(res)
}