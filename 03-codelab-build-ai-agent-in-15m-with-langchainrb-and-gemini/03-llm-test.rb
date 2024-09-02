#!/usr/bin/env ruby
require 'langchain'
require 'dotenv/load'
require 'uri'


GeminiApiKey = ENV.fetch "GEMINI_API_KEY", nil
raise "Missing GEMINI_API_KEY from .env !" if GeminiApiKey.nil?



def main
  llm = Langchain::LLM::GoogleGemini.new(api_key: ENV["GEMINI_API_KEY"])
  puts(llm)
  # TODO
end

main()
