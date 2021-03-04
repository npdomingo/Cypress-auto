import { Given, When, Then, And } from "cypress-cucumber-preprocessor/steps";

const url = 'https://www.online-calculator.com/full-screen-calculator/'

  Given('I access the online calculator', () => {
    cy.visit(url)
  });
  
  When('I divide numbers {int}, {int}', (num1, num2) => {
  cy
    .get("iframe")
    .type(num1)
    .type("/")
    .type(num2)
    .type("=")
  });
  
  Then('I should be able to see correct {int}', (quotient) => {
    cy.screenshot()
    cy.get(quotient)
  });