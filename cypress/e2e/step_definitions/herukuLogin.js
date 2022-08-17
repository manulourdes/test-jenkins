const { Given, Then, And, When } = require('@badeball/cypress-cucumber-preprocessor');
const loginPage = require('../../pages/login.page');
const LoginPage = require('../../pages/login.page');

const pages = {
    login: LoginPage
}

Given('the use goes to the {string} url', (page)=>{
    loginPage.open(page)
})

Then('the page title is {string}', (title)=>{
    LoginPage.elements.homePageTitle().should("have.text", title)
    });

And('the sub-header text is {string}', (subtitle)=>{
    LoginPage.elements.subTitle().should("have.text", subtitle)
})

And('a list of the following sub-pages is displayed {string}', (subpages)=>{
    LoginPage.elements.list().contains(subpages)
})

When('the user click on the {string} link',(url)=>{
    cy.contains(url).click()
})

Then('the {string} url is correct', (url)=>{
    cy.location('pathname').should('include',((url).toLowerCase()))

})