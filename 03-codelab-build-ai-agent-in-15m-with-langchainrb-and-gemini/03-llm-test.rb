#!/usr/bin/env ruby
require 'langchain'
require 'dotenv/load'

# require dotenv ?
GeminiApiKey = ENV.fetch "GEMINI_API_KEY", nil
raise "Missing GEMINI_API_KEY from .env !" if GeminiApiKey.nil?

llm = Langchain::LLM::GoogleGemini.new(api_key: ENV["GEMINI_API_KEY"])

puts(llm)

# test embedding:
#e = llm.embed(text: "foo bar") # .embedding

# test Chat/Summarize/Complete

#llm.embed(text: "foo bar").embedding


llm.chat(messages: [{role: "user", content: "What is the meaning of life?"}]).completion
#Summarize the text:

llm.summarize(text: "...").completion
