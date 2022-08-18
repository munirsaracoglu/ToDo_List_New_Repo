describe('ToDo Lists', () => {
  it('retrieves lists', () => {
    cy.request('http://localhost:4567/lists')
      .then(response => {
        expect(response.status).to.eq(200)
      })
  })
})
