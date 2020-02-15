test_that("we're receiving appropriate error messages", {
  
  testthat::expect_error(fkoh111::list_folder(path_to_folder_without_subfolders),
                         "The assigned path doesn't contain any folder(s)", fixed = TRUE)
  testthat::expect_error(fkoh111::list_folder(path_to_folder_without_subfolders, verbose = TRUE),
                         "The assigned path doesn't contain any folder(s)", fixed = TRUE)
  
  testthat::expect_error(fkoh111::list_folder(verbose = TRUE), "You need to provide a path!")
  testthat::expect_error(fkoh111::list_folder(), "You need to provide a path!")
  
  }
)

test_that("we're receiving dataframes back", {
  
  testthat::expect_is(fkoh111::list_folder(getwd(), verbose = TRUE), "data.frame")
  testthat::expect_length(fkoh111::list_folder(getwd(), verbose = TRUE), 9)

  testthat::expect_is(fkoh111::list_folder(getwd()), "data.frame")
  testthat::expect_length(fkoh111::list_folder(getwd()), 1)

  }
)