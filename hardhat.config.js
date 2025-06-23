require("@nomicfoundation/hardhat-ethers");
require("@openzeppelin/hardhat-upgrades"); // For upgradeable contracts
require("@nomicfoundation/hardhat-chai-matchers"); // Often useful to require explicitly for matchers
require('dotenv').config();

/**
 * @type import('hardhat/config').HardhatUserConfig
 */
module.exports = {
  solidity: {
    version: "0.8.22", // UPDATED to match UUPSUpgradeable requirement
    settings: {
      optimizer: {
        enabled: true,
        runs: 200
      }
    }
  },
  sourcify: {
    enabled: true
  },
  etherscan: {
    apiKey: {
      // For Seitrace (atlantic-2 / chainId 1328), an API key might not be strictly needed by the plugin 
      // if the API itself doesn't gatekeep, but it's good practice to have a placeholder.
      // The actual key value here might be ignored if the API endpoint doesn't use it.
      sei_testnet: process.env.SEITRACE_API_KEY || "anyValue", // "anyValue" is a common placeholder if key not needed by API
      sei_mainnet: process.env.SEITRACE_MAINNET_API_KEY || "anyValue" // For mainnet verification
    },
    customChains: [
      {
        network: "sei_testnet", // Must match the network name in your 'networks' object
        chainId: 1328, // Your SEI testnet chainId (atlantic-2)
        urls: {
          apiURL: "https://seitrace.com/atlantic-2/api", // Correct testnet API
          browserURL: "https://seitrace.com/"
        }
      },
      {
        network: "sei_mainnet", // Mainnet configuration
        chainId: 1329, // SEI mainnet chainId (verify this is correct)
        urls: {
          apiURL: "https://seitrace.com/pacific-1/api", // Updated API endpoint to match mainnet
          browserURL: "https://seitrace.com/"
        }
      }
    ]
  },
  defaultNetwork: "hardhat", 
  networks: {
    hardhat: { // Default local network for testing
        // accounts: [process.env.LOCALHOST_ACCOUNT] // Only if you need a specific private key for local hardhat node
    },
    localhost: {
      url: "http://127.0.0.1:8545",
      // accounts: [process.env.LOCALHOST_ACCOUNT] // Already there, ensure LOCALHOST_ACCOUNT is set if used
    },
    sei_testnet: { // SEI Testnet (atlantic-2) 
      url: "https://evm-rpc-testnet.sei-apis.com", // Official SEI testnet RPC
      chainId: 1328, // atlantic-2 chain ID
      accounts: process.env.SEI_ACCOUNT ? [process.env.SEI_ACCOUNT] : [] // Ensure SEI_ACCOUNT in .env has testnet SEI for gas
    },
    sei_mainnet: { // SEI Mainnet configuration
      url: "https://evm-rpc.sei-apis.com", // Official SEI mainnet RPC  
      chainId: 1329, // SEI mainnet chainId (pacific-1)
      accounts: process.env.SEI_MAINNET_ACCOUNT ? [process.env.SEI_MAINNET_ACCOUNT] : [], // Separate mainnet private key
      gasPrice: "auto", // Let the network determine gas price
      timeout: 60000, // Increase timeout for mainnet
      confirmations: 2 // Wait for 2 confirmations on mainnet
    }
  },
};
