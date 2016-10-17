var Character = require('../main');
var chai = require('chai');
var expect = chai.expect;

describe('webdriver.io', function() {
  it('has the correct title', function() {
    browser.url('localhost:9393/index.html');
    expect(browser.getTitle()).to.equal('WebdriverIO');
  });
});
