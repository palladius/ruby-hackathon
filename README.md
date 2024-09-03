# ruby-hackathon

Self: https://github.com/palladius/ruby-hackathon (public Repo)

Hello fellow rubyists!

This repo contains 3 possible exercises to do at a hackathon.

## Labs

Here are the labs.

### 1. (Codelab) Gemini to acccelerate TDD development

* https://codelabs.developers.google.com/tdd-ruby-app-duetai
* This codelab will help you use Gemini code assist to help you code a [TDD](https://it.wikipedia.org/wiki/Test_driven_development)
  [Ruby on Rails](https://rubyonrails.org/) App.

### 2. (skillsboost) [Using Ruby on Rails with Cloud SQL for PostgreSQL on Cloud Run](https://www.cloudskillsboost.google/focuses/20047?parent=catalog)

In this lab, you'll use cloud Skillsboost to set up resources and be guided through.

* **Lab**: https://www.cloudskillsboost.google/focuses/20047?parent=catalog
* **Credits**: built-in.

_Fun fact: Skillsboost backend leverages Ruby code to check for your implementation!_

### 3.  Build an AI agent in 15 min Langchain.rb

* Lab: under folder `03-codelab-build-ai-agent-in-15m-with-langchainrb-and-gemini/`.
* Credit: onramp or UAPaaS.

## Credits

Credits will be given to you by the organizer using a number of different credit systems:

* `Onramp`. This is a custom/private application which allows you to have a Billing Account with some money attached to your personal account (eg a GMail identity). This has limited billing access but the bill is assigned to you (and wil expire in ~3 months). All infra that you build will remain and belongs to you.
* `UAPaaS`: User and Password as a Service. A proctor will give you an identity (user/pass) complete with Billing attached. Everything you build with it will be destroyed, and credentials revoked, after a few days from the end of the event.

One is native to Cloud Skillsboost and the other two are provided by Googlers.


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
