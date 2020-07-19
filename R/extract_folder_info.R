#' Extract folder info
#' 
#' @param path The path from where you want to list folder(s)
#' 
#' @param attribute The attribute you want to extract. For a complete list of attributes
#' see `?file.info()`
#' 
#' @export
#' @return A vector of attributes requested
#' 
#' @examples
#' \dontrun{
#' extract_folder_info("tests", "ctime")
#' }

extract_folder_info <- function(path, attribute) {
  
  if(missing(path)) {
    stop("You forgot to specify a path")
  }
  
  if(missing(attribute)) {
    stop("You forgot to specify an attribute")
  }
  
  file.info(dir(path, full.names=TRUE))[,attribute][file.info(dir(path, full.names=TRUE))$isdir]
}