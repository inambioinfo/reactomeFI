context("reactomeFI function")


testthat::test_that("load reactomeFI",
                    {
                      df <- ld_reactomeFI(2015)
                      cat('test column names... ',
                          if(all(colnames(df)== c("Gene1","Gene2","Annotation", "Direction",  "Score" ))){
                            print("OK")
                          }
                      )
                      cat('test dim  of data base... ',
                          if(dim(df)[1] == 229300){
                            print("OK")
                          }
                      )
                    })






