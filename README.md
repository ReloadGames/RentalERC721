NFT Rental System Template

A complete, production-ready NFT rental marketplace built with Hardhat, OpenZeppelin, and Solidity. This template provides a foundation for creating your own NFT rental platform with secure smart contracts and comprehensive rental mechanics.

🚀 Features

- **ERC721 Upgradeable NFTs** with rental functionality
- **Secure Rental System** with escrow and automatic expiration
- **Owner Cancellation Rights** with penalty fees and notice periods
- **Platform Fee Management** (configurable 0-25%)
- **Reentrancy Protection** and comprehensive security measures
- **UUPS Proxy Pattern** for future upgrades
- **Pull Payment Pattern** to prevent DoS attacks
- **Multi-network Support** (Mainnet, Testnet, SEI, etc.)

📋 Prerequisites

- Node.js >= 16.0.0
- npm or yarn
- Git

🛠️ Quick Start

1. Clone and Install

```bash
git clone <your-repo-url>
cd your-project-name
npm install
```

2. Environment Setup

Create a `.env` file in the root directory:

```bash
cp .env.example .env
```

Fill in your environment variables:

```env
# Private key for deployment (without 0x prefix)
PRIVATE_KEY=your_private_key_here

# RPC URLs for different networks
MAINNET_RPC_URL=https://your-mainnet-rpc-url
TESTNET_RPC_URL=https://your-testnet-rpc-url
SEI_MAINNET_RPC_URL=https://evm-rpc.sei-apis.com
SEI_TESTNET_RPC_URL=https://evm-rpc-testnet.sei-apis.com

# API keys for contract verification
ETHERSCAN_API_KEY=your_etherscan_api_key
ALCHEMY_API_KEY=your_alchemy_api_key
INFURA_API_KEY=your_infura_api_key
```

3. Compile Contracts

```bash
npx hardhat compile
```

4. Run Tests

```bash
npx hardhat test
```

5. Deploy

```bash
# Deploy to testnet
npx hardhat run scripts/deploy.js --network testnet

# Deploy to mainnet
npx hardhat run scripts/deployMainnet.js --network mainnet
```

🔧 Customization Guide

Essential Files to Modify

1. **`contracts/ShinseiNFT.sol`**
- **Line 1**: Update the license if needed
- **Lines 3-25**: Replace the ASCII art with your project's branding
- **Line 65**: Change contract name from `ShinseiNFT` to `YourProjectNFT`
- **Lines 84-99**: Update struct names and variables as needed
- **Line 108**: Modify `THREE_DAYS_IN_SECONDS` constant if you want different cancellation periods

2. **`package.json`**
- **Line 2**: Change `"name"` from `"SacredProxy"` to your project name
- **Line 4**: Update `"description"`
- **Line 9**: Update `"author"` information
- **Lines 11-24**: Add/remove dependencies as needed

3. **`hardhat.config.js`**
- **Lines 15-35**: Configure your network settings
- **Lines 40-55**: Update Etherscan API configuration for contract verification
- **Lines 25-30**: Adjust gas settings for your target networks

4. **Project Documentation**
- **`SHINSEI_RENTAL_WHITEPAPER.md`**: Replace with your project's whitepaper
- **`README.md`**: This file - customize for your project

Configuration Options

Smart Contract Parameters

```solidity
// In your NFT contract constructor/initializer
platformFeePercentage    // 10% default (1000 basis points)
platformWallet          // Your platform fee collection address
withdrawalErc20TokenAddress // Token address for payments (use address(0) for native currency)
baseURI                 // Base URI for your NFT metadata
```

Rental System Settings

```solidity
THREE_DAYS_IN_SECONDS = 3 * 24 * 60 * 60;  // Minimum notice for cancellation
MINIMUM_RENTAL_DURATION = THREE_DAYS_IN_SECONDS + 1;  // Minimum rental period
```

Network Configuration

Adding New Networks

In `hardhat.config.js`, add new network configurations:

```javascript
networks: {
  yourNetwork: {
    url: process.env.YOUR_NETWORK_RPC_URL,
    accounts: [process.env.PRIVATE_KEY],
    gasPrice: 20000000000, // 20 gwei
  }
}
```

Verification Setup

Update the `etherscan` configuration for your networks:

```javascript
etherscan: {
  apiKey: {
    yourNetwork: process.env.YOUR_NETWORK_API_KEY
  }
}
```

📁 Project Structure

```
├── contracts/
│   └── ShinseiNFT.sol          # Main NFT rental contract
├── scripts/
│   ├── deploy.js               # Basic deployment script
│   ├── deployMainnet.js        # Mainnet deployment
│   ├── verify_proxy_final.js   # Contract verification
│   └── ...                     # Various utility scripts
├── test/
│   └── ShinseiNFT.test.js      # Contract tests
├── hardhat.config.js           # Hardhat configuration
├── package.json                # Project dependencies
├── proxy_constructor_args.js   # Proxy deployment arguments
└── README.md                   # This file
```

🚀 Deployment Steps

1. Testnet Deployment

```bash
# Deploy to testnet
npx hardhat run scripts/deploy.js --network testnet

# Verify contract
npx hardhat run scripts/verify_testnet.js --network testnet
```

2. Mainnet Deployment

```bash
# Deploy to mainnet
npx hardhat run scripts/deployMainnet.js --network mainnet

# Verify contract
npx hardhat run scripts/verify_mainnet.js --network mainnet
```

3. Post-Deployment Configuration

After deployment, you'll need to:

1. **Set Platform Parameters**:
   ```bash
   # Example script calls
   await contract.setPlatformFeePercentage(1000); // 10%
   await contract.setPlatformWallet("0x...");
   ```

2. **Configure Base URI**:
   ```bash
   await contract.setBaseURI("https://your-api.com/metadata/");
   ```

3. **Mint Initial NFTs** (if needed):
   ```bash
   npx hardhat run scripts/mintFirst10.js --network yourNetwork
   ```

🔒 Security Features

- **Reentrancy Guards**: All state-changing functions protected
- **Access Control**: Owner-only functions for critical operations
- **Integer Overflow Protection**: Using Solidity 0.8+ built-in checks
- **Pull Payment Pattern**: Prevents DoS attacks on withdrawals
- **Upgrade Safety**: UUPS proxy pattern with proper authorization

🧪 Testing

Run the comprehensive test suite:

```bash
# Run all tests
npx hardhat test

# Run specific test file
npx hardhat test test/ShinseiNFT.test.js

# Run with gas reporting
REPORT_GAS=true npx hardhat test
```

📝 Customization Checklist

Before deploying your own version:

- [ ] Update contract name and branding
- [ ] Modify platform fee percentage and wallet
- [ ] Configure network settings in `hardhat.config.js`
- [ ] Update deployment scripts with your parameters
- [ ] Customize NFT metadata and base URI
- [ ] Update project documentation
- [ ] Configure contract verification for your networks
- [ ] Test thoroughly on testnet
- [ ] Audit smart contracts (recommended for mainnet)

🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests for new functionality
5. Ensure all tests pass
6. Submit a pull request

📄 License

This project is licensed under a Custom Open Source License (allows commercial use, prohibits selling the template itself) - see the [LICENSE](LICENSE) file for details.

⚠️ Disclaimers

- **Security**: Audit your contracts before mainnet deployment
- **Testing**: Thoroughly test all functionality on testnets
- **Compliance**: Ensure compliance with local regulations
- **Gas Costs**: Monitor and optimize gas usage for your use case

🆘 Support

For questions and support:

1. Check the existing issues
2. Review the documentation
3. Create a detailed issue with reproduction steps
4. Join our community discussions

🔗 Useful Resources

- [OpenZeppelin Contracts](https://docs.openzeppelin.com/contracts/)
- [Hardhat Documentation](https://hardhat.org/docs)
- [Solidity Documentation](https://docs.soliditylang.org/)
- [EIP-721 Standard](https://eips.ethereum.org/EIPS/eip-721)

Disclaimer: You use this at your own risk, the Contract has an extensive audit via Sec3 however we bare no responsibility for your own implementation of the code in this repo. 

---

**Built with ❤️ using OpenZeppelin, Hardhat, and Solidity** 
