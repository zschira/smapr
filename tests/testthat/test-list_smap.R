context("list_smap")

test_that("vector input causes errors", {
    files <- find_smap(id = "SPL4SMGP", date = "2015.03.31")
    files <- download_smap(files[1, ])
    expect_error(list_smap(files$file))
})