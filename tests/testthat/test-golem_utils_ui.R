test_that("Test enurl works", {
  expect_s3_class(enurl("https://www.thinkr.fr", "ThinkR"), "shiny.tag")
  expect_equal(
    as.character(enurl("https://www.thinkr.fr", "ThinkR")),
    '<a href="https://www.thinkr.fr">ThinkR</a>'
  )
})

test_that("Test columns wrappers works", {
  expect_s3_class(col_12(), "shiny.tag")
  expect_s3_class(col_10(), "shiny.tag")
  expect_s3_class(col_8(), "shiny.tag")
  expect_s3_class(col_6(), "shiny.tag")
  expect_s3_class(col_4(), "shiny.tag")
  expect_s3_class(col_3(), "shiny.tag")
  expect_s3_class(col_2(), "shiny.tag")
  expect_s3_class(col_1(), "shiny.tag")

  expect_equal(as.character(col_12()), '<div class="col-sm-12"></div>')
  expect_equal(as.character(col_10()), '<div class="col-sm-10"></div>')
  expect_equal(as.character(col_8()), '<div class="col-sm-8"></div>')
  expect_equal(as.character(col_6()), '<div class="col-sm-6"></div>')
  expect_equal(as.character(col_4()), '<div class="col-sm-4"></div>')
  expect_equal(as.character(col_3()), '<div class="col-sm-3"></div>')
  expect_equal(as.character(col_2()), '<div class="col-sm-2"></div>')
  expect_equal(as.character(col_1()), '<div class="col-sm-1"></div>')
})
