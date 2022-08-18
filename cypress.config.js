const { defineConfig } = require('cypress')

module.exports = defineConfig({
  e2e: {
    specPattern: 'cypress/**/*.test.js',
    supportFile: 'cypress/support/commands.js'
  }
})
