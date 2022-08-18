process.env.PLAYWRIGHT_EXPERIMENTAL_FEATURES = '1'

module.exports = {
  reporter: [['list'], ['html', { open: 'never', outputFolder: 'reports' }]],
  projects: [
    {
      name: 'api',
      testMatch: 'tests/api/*.test.js',
      use: {
        baseURL: 'http://localhost:4567'
      }
    },
    {
      name: 'e2e',
      outputDir: 'test-results',
      testMatch: 'tests/e2e/*.test.js',
      use: {
        baseURL: 'http://localhost:3030',
        browsers: ['chromium'],
        viewport: { width: 1440, height: 900 },
        screenshot: 'only-on-failure',
        trace: 'retain-on-failure',
        bypassCSP: true,
        launchOptions: {
          args: [
            '--no-sandbox',
            '--disable-setuid-sandbox',
            '--disable-web-security',
            '--disable-gpu',
            '--disable-dev-shm-usage'
          ],
          headless: true
        }
      }
    }
  ]
}
