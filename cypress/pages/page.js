module.exports = class Page {
    open (path) {
        cy.visit(`https://the-internet.herokuapp.com${path}`)
    }
}
