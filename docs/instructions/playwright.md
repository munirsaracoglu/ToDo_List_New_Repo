# Assignment Instructions - Playwright
In this section, you can find everything we expect in your assignment from the **Playwright** standpoint.

## Required Tasks
- [ ] **1.** Cover 2 requirements from the [specifications](../requirements.md) of this application with API tests. Choose the ones you find most important in terms of quality. Assume every validation documented there should have been reflected in the API level. The endpoints of the REST API are documented [here](../api.md);
- [ ] **2.** Cover 2 requirements from the [specifications](../requirements.md) of this application with End-to-End tests. Choose the ones you find most important in terms of quality. 

## Notes

- Playwright is already configured in the project
- Create the API test files inside `tests/api` folder and with `.test.js` extension (e.g: `tests/api/some-test.test.js`)
- Create the End-to-end test files inside `tests/e2e` folder and with `.test.js` extension (e.g: `tests/e2e/some-test.test.js`)
- To run tests:
  - Start the frontend and backend from the application separately (check instructions on [development.md](docs/development.md))
  - To run API tests: `yarn test:api`
  - To run End-to-end tests: `yarn test:e2e`
