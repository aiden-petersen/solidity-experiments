const Contract = artifacts.require("Telephone");

module.exports = function (deployer) {
  deployer.deploy(Contract);
};
