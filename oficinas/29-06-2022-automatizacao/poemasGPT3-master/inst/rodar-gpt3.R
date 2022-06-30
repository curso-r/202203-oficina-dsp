token <- Sys.getenv("OPENAI_TOKEN")

pkgload::load_all(".")

texto <- rodar_gpt3(token)

cat(texto, file = "README.md")
