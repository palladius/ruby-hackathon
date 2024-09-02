In this course, we'll leverage:

* `langchainrb` gem to build an AI tool.
* Some credit system to get an API key to leverage Gemini.


## Prerequisites

To execute this lab, you need:

* A dev environment (eg, local `vscode`).
* A Gemini API key.

## Steps

**Setup Gemini API key**

1. Get Gemini API key [here](https://aistudio.google.com/app/apikey).
1. Copy .env.dist into .env: `cp .env.dist .env`
1. Add the KEY to the proper line: `export GEMINI_API_KEY=<your personal key>` from step 1.
1. Test that it all works by launching this script: `./01-test-gemini-api.sh`

**Let's get started with ruby!**

1. `bundle install`
