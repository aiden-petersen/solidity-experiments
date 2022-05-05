var MyContract = artifacts.require("Fallout");

module.exports = function(deployer) {
  // deployment steps
  deployer.deploy(MyContract);
};
