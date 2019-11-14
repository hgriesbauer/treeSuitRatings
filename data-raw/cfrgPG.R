## code to prepare `cfrgPG` dataset goes here

usethis::use_data("cfrgPG")

cfrgPG <- read_csv("data-raw/cfrg_PG.csv")

save(cfrgPG,file="data/cfrgPG.RData")

