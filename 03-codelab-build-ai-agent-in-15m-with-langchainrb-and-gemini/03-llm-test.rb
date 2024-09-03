#!/usr/bin/env ruby
require 'langchain'
require 'dotenv/load'
#require 'uri'
require_relative 'monkey_patch/riccardo02_monkeypatch_langchain_google_gemini.rb'

GeminiApiKey = ENV.fetch "GEMINI_API_KEY", nil
raise "Missing GEMINI_API_KEY from .env !" if GeminiApiKey.nil?


def main
  llm = Langchain::LLM::GoogleGemini.new(api_key: ENV["GEMINI_API_KEY"])
  puts(llm)

  embedding = llm.embed(text: "This is a sample text for embedding.")

  puts(embedding)
end

main()
