
test_that("we're receiving appropriate error messages", {
  
  testthat::expect_error(fkoh111::extract_folder_info(),
                         "You forgot to specify a path", fixed = TRUE)
  
  testthat::expect_error(fkoh111::extract_folder_info(path = getwd()),
                         "You forgot to specify an attribute", fixed = TRUE)
  }
)

test_that("we're getting back expected formats", {
  
  testthat::expect_is(fkoh111::extract_folder_info(path = getwd(), "size"), "numeric")
  testthat::expect_is(fkoh111::extract_folder_info(path = getwd(), "uname"), "character")
  testthat::expect_is(fkoh111::extract_folder_info(path = getwd(), "uid"), "integer")
  testthat::expect_is(fkoh111::extract_folder_info(path = getwd(), "grname"), "character")
  testthat::expect_is(fkoh111::extract_folder_info(path = getwd(), "gid"), "integer")
  testthat::expect_is(fkoh111::extract_folder_info(path = getwd(), "ctime"), "POSIXct")
  testthat::expect_is(fkoh111::extract_folder_info(path = getwd(), "mtime"), "POSIXct")
  testthat::expect_is(fkoh111::extract_folder_info(path = getwd(), "atime"), "POSIXct")
  
  }
)