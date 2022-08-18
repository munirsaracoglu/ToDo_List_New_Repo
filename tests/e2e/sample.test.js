const { test, expect } = require('@playwright/test')

test.describe('ToDo Lists', () => {
  test('opens app page', async ({ page }) => {
    await page.goto('/')

    await expect(page).toHaveTitle('ToDo Lists')
  })
})
