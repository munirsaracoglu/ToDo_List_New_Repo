# Assignment Instructions - Cucumber
In this section, you can find everything we expect in your assignment from the **Cucumber** standpoint.

## Required Tasks
- [ ] **1.** Write a Feature with two Scenarios, covering 2 requirements from the [specifications](../requirements.md) of this application. Choose the ones you find most important in terms of quality.
- [ ] **2.** Implement the step definitions for your Scenarios, making sure that it works.

## Notes

- Cucumber is already configured in the project, using Capybara
- Create the feature inside `backend/features` folder (e.g: `backend/features/some_scenario.feature`)
- Implement the step definitions inside `backend/features/step_definitions` folder (e.g: `backend/features/step_definitions/some_steps.rb`)
- To run the feature:
  - Start the frontend and backend from the application separately (check instructions on [development.md](docs/development.md))
  - `cd backend`
  - `bundle exec cucumber features/some_scenario.feature`
