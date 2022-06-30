# install packages ---
install.packages("httr")

# run code ---

httr::POST(
  "https://app.anm.gov.br/SIGBM/Publico/ClassificacaoNacionalDaBarragem/ExportarExcel",
  httr::write_disk(paste0(
    "sigbm_download_", Sys.Date(), ".xlsx"
  ))
)
