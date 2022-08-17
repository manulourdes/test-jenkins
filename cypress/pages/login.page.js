const Page = require('./page');

class loginPage extends Page{
    elements = {
        homePageTitle: () => cy.get('h1').contains('Welcome to the-internet'),
        subTitle: () => cy.get('h2').contains('Available Examples'),
        list: () => cy.xpath('//*[@id="content"]/ul/li/a')
        };

    open (url) {
        return super.open(url);
    }
}
module.exports = new loginPage();
