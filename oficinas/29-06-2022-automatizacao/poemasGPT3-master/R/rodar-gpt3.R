#' Rodar GPT3
#'
#' @param token token de acesso à API da OpenAI
#'
#' @export
rodar_gpt3 <- function(token) {
  r <- httr::POST(
    "https://api.openai.com/v1/completions",
    httr::add_headers(
      "Authorization" = paste("Bearer", token)
    ),
    body = list(
      model = "text-davinci-002",
      prompt = "Escreva um poema fofinho sobre github actions, em português.",
      temperature = 0.9,
      max_tokens = 512,
      top_p = 1,
      frequency_penalty = 0,
      presence_penalty = 0
    ),
    encode = "json"
  )

  httr::content(r)$choices[[1]]$text
}
