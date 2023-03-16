require("@nomicfoundation/hardhat-toolbox");
require("dotenv").config();

module.exports = {
  solidity: "0.8.9",
  // Adding this entry allows us to run the deploy script without specifying the network.
  defaultNetwork: "sepolia",
  networks: {
    sepolia: {
      url: process.env.QUICKNODE_HTTP_URL,
      accounts: [process.env.PRIVATE_KEY],
    },
  },
};
