const { test, expect } = require('@playwright/test')

test.describe('ToDo Lists', () => {
  test('retrieves lists', async ({ request }) => {
    const response = await request.get('/lists')

    await expect(response).toBeOK()
  })
})
