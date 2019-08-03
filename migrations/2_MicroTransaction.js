const MicroTransaction = artifacts.require("MicroTransaction");

module.exports = function(deployer) {
  deployer.deploy(MicroTransaction);
};
