const contract = artifacts.require("CoinFlipRunner");

module.exports = function (deployer) {
  deployer.deploy(contract);
};
