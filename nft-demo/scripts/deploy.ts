import { ethers } from "hardhat";

async function main() {
  const nft = await ethers.deployContract("Nft", []);
  const contractAddress = await nft.getAddress();
  await nft.waitForDeployment();

  console.log(
    `NFT contract ${contractAddress} deployed to ${nft.target}`
  );
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});