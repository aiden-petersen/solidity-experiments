const Contract = artifacts.require("TelephoneRunner");

module.exports = function (deployer) {
  deployer.deploy(Contract);
};
