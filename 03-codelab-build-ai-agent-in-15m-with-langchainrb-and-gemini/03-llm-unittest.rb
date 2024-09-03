#!/usr/bin/env ruby

require 'test/unit'
require 'langchain'
require 'dotenv/load'
#require 'uri'


class MyRubyCodeTest < Test::Unit::TestCase

  def setup
    # Assuming your LLM object creation happens in your teardown script
    @llm = # ... obtain your LLM object here
    llm = Langchain::LLM::GoogleGemini.new(api_key: ENV["GEMINI_API_KEY"])
    puts(llm)
  end

  def test_embedding
#    skip "Temporarily disabling this test while working on others"
    text_to_embed = "This is a sample text for embedding."
    #embedding = @llm.embed(text: text_to_embed)
    embedding = @llm.embed text: "Hello world"

    # Assertions to validate the embedding
    assert_not_nil embedding, "Embedding should not be nil"
    assert_kind_of Array, embedding, "Embedding should be an array"
    # Add more specific assertions based on your expectations
  end

  # def test_chat
  #   user_message = "What is the meaning of life?"
  #   chat_response = @llm.chat(messages: [{role: "user", content: user_message}]) # .completion

  #   # Assertions to validate the chat response
  #   assert_not_nil chat_response, "Chat response should not be nil"
  #   assert_kind_of String, chat_response, "Chat response should be a string"
  #   # You might want to check if the response is contextually relevant
  # end

  # # Same as above, but with `.completion`
  # def test_complete
  #   user_message = "What is the meaning of life?"
  #   chat_response = @llm.chat(messages: [{role: "user", content: user_message}]).completion

  #   # Assertions to validate the completion
  #   assert_not_nil completion, "Completion should not be nil"
  #   assert_kind_of String, completion, "Completion should be a string"
  #   # Consider checking if the completion is coherent and aligns with the prompt
  # end

  # def test_summarization
  #   text_to_summarize = "A long article about climate change..."
  #   summary = @llm.summarize(text: text_to_summarize).completion

  #   # Assertions to validate the summary
  #   assert_not_nil summary, "Summary should not be nil"
  #   assert_kind_of String, summary, "Summary should be a string"
  #   # You might want to assert that the summary is concise and captures key points
  # end

end
