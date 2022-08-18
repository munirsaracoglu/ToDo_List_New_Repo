describe('ToDo Lists', () => {
  it('opens app page', () => {
    cy.visit('http://localhost:3030')

    cy.title().should('include', 'ToDo Lists')
  })
})
