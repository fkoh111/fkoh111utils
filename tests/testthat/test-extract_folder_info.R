
test_that("we're receiving appropriate error messages", {
  
  testthat::expect_error(fkoh111::extract_folder_info(),
                         "You forgot to specify a path", fixed = TRUE)
  
  testthat::expect_error(fkoh111::extract_folder_info(path = path_to_src),
                         "You forgot to specify an attribute", fixed = TRUE)
  }
)

test_that("we're getting back expected formats", {
  
  testthat::expect_is(fkoh111::extract_folder_info(path = path_to_src, "size"), "numeric")
  testthat::expect_is(fkoh111::extract_folder_info(path = path_to_src, "uname"), "character")
  testthat::expect_is(fkoh111::extract_folder_info(path = path_to_src, "uid"), "integer")
  testthat::expect_is(fkoh111::extract_folder_info(path = path_to_src, "grname"), "character")
  testthat::expect_is(fkoh111::extract_folder_info(path = path_to_src, "gid"), "integer")
  testthat::expect_is(fkoh111::extract_folder_info(path = path_to_src, "ctime"), "POSIXct")
  testthat::expect_is(fkoh111::extract_folder_info(path = path_to_src, "mtime"), "POSIXct")
  testthat::expect_is(fkoh111::extract_folder_info(path = path_to_src, "atime"), "POSIXct")
  
  }
)