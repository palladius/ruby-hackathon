

## Missing URI bug

https://github.com/patterns-ai-core/langchainrb/issues/752

```
rm -rf /usr/local/google/home/ricc/.rbenv/versions/3.2.1/lib/ruby/gems/3.2.0/
rm -rf /usr/local/google/home/ricc/.rbenv/versions/3.3.4/lib/ruby/gems/3.3.0/
gem install bundler
gem install irb
bundle install
irb

irb(main):001> require 'langchain'
=> true
irb(main):002> RUBY_VERSION
=> "3.3.4"
irb(main):003> llm = Langchain::LLM::GoogleGemini.new(api_key: ENV["GEMINI_API_KEY"])
=>
#<Langchain::LLM::GoogleGemini:0x00007fa5d7f97458
...
irb(main):004> llm.embed text: "Hello world"
/usr/local/google/home/ricc/.rbenv/versions/3.3.4/lib/ruby/gems/3.3.0/gems/langchainrb-0.15.4/lib/langchain/llm/google_gemini.rb:96:in `embed': undefined method `URI' for an instance of Langchain::LLM::GoogleGemini (NoMethodError)

      uri = URI("https://generativelanguage.googleapis.com/v1beta/models/#{model}:embedContent?key=#{api_key}")
            ^^^
        from (irb):4:in `<main>'
        from <internal:kernel>:187:in `loop'
        from /usr/local/google/home/ricc/.local/share/gem/ruby/3.3.0/gems/irb-1.14.0/exe/irb:9:in `<top (required)>'
        from /usr/local/google/home/ricc/.rbenv/versions/3.3.4/bin/irb:25:in `load'
        from /usr/local/google/home/ricc/.rbenv/versions/3.3.4/bin/irb:25:in `<main>'
```
