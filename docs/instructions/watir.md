# Assignment Instructions - Watir
In this section, you can find everything we expect in your assignment from the **Watir** standpoint.

## Required Tasks
- [ ] **1.** Cover 2 requirements from the [specifications](../requirements.md) of this application with End-to-End tests. Choose the ones you find most important in terms of quality. 

## Prerequisites

Watir needs Chromedriver to run. If you don't have it installed, follow the instructions below:

- [Download the Chromedriver executable](https://chromedriver.chromium.org/), according to your Chrome version and OS
- [MacOS Tutorial](https://www.swtestacademy.com/install-chrome-driver-on-mac/)
- [WSL2 Tutorial](https://cloudbytes.dev/snippets/run-selenium-and-chrome-on-wsl2) (Steps 2 and 3 from the tutorial)
- [Ubuntu Tutorial](https://skolo.online/documents/webscrapping/)

## Notes

- RSpec and Watir are already configured in the project
- Create the test files inside `backend/spec/features` folder (e.g: `backend/spec/features/some_spec.rb`)
- To run tests:
  - Start the frontend and backend from the application separately (check instructions on [development.md](docs/development.md))
  - `cd backend` 
  - `bundle exec rspec spec/features/some_spec.rb`
