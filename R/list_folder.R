#' List folders from a given directory.
#' 
#' @param path The path from where you want to list folder(s)
#' 
#' @param verbose Boolean deciding how verbose the output should be. Defaults to FALSE.
#' 
#' @export
#' @return Returns a dataframe of folders in the assigned path.
#' 
#' @examples
#' \donttest{
#' list-folders("tests")
#' }

list_folder <- function(path, verbose = FALSE) {
  
  if(missing(path)) {
    stop("You need to provide a path!")
  }

  if(verbose == TRUE) {
    res <- data.frame(
      folders = dir(path)[file.info(dir(path, full.names=TRUE))$isdir],
      size = extract_folder_info(path, "size") * 10^-6,
      user_name = extract_folder_info(path, "uname"),
      user_id = extract_folder_info(path, "uid"),
      group_name = extract_folder_info(path, "grname"),
      group_id = extract_folder_info(path, "gid"),
      time_created = extract_folder_info(path, "ctime"),
      time_modified = extract_folder_info(path, "mtime"),
      time_altered = extract_folder_info(path, "atime"))
  } else {
    res <- data.frame(
      folders <- dir(path)[file.info(dir(path, full.names=TRUE))$isdir]
    )
  }
  
  if(dim(res)[1]==0) {
    stop("The assigned path doesn't contain any folder(s)")
  }
  
  return(res)
}
