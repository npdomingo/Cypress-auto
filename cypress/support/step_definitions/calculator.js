import { Given, When, Then, And } from "cypress-cucumber-preprocessor/steps";

const url = 'https://www.online-calculator.com/full-screen-calculator/'

  Given('I access online calculator', () => {
    cy.visit(url)    
  });

  When('I click {int}', (num1) => {
      cy
      .get("iframe")
      .type(num1)	
  });

  When('I click {}', (operator) => {
    cy
    .get("iframe")
    .type(operator)	
  });

  When('I click {int}', (num2) => {
    cy
    .get("iframe")
    .type(num2)	
  });
  
  And('I click =', () => {
  cy
    .get("iframe")
    .type("=")
  });
  
  Then('I should be able to see correct result {int}', (result) => {
    cy.screenshot()
      .get("iframe")
      .get(result)
  });

  And('I clear the result', () => {
    cy
    .get("iframe")
    .type("c")
  })