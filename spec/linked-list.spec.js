'use strict';

// Allow chai syntax like `expect(foo).to.be.ok;`
// jshint -W030

const chai = require('chai');
const chaiAsPromised = require('chai-as-promised');

chai.use(chaiAsPromised);

const expect = chai.expect;

const LinkedList = require('../lib/linked-list');

describe('LinkedList', function () {
  const list = new LinkedList();
  it('is a constructor', function () {
    expect(list instanceof LinkedList).to.be.true;
  });
});
