const { ethers } = require("hardhat");

async function main() {
  const ProxyContract = await ethers.getContractFactory("ProxyContract");
  const proxyContract = await upgrades.deployProxy(ProxyContract, [], { kind: 'uups' });

  console.log("ProxyContract deployed to:", proxyContract.address);
}

main()
  .then(() => process.exit(0))
  .catch(error => {
    console.error(error);
    process.exit(1);
  });
