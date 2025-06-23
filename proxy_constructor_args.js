// C:\Users\Josh\Desktop\Shinsei\proxy_constructor_args.js
const { Interface } = require("ethers"); // Make sure ethers v6 is installed in your project
const ShinseiNFT_ABI = require('./artifacts/contracts/ShinseiNFT.sol/ShinseiNFT.json').abi;

// Address of your verified ShinseiNFT implementation contract
const logicAddress = "";

// Arguments used for the initialize function of ShinseiNFT
const initializeArgs = [
    "Shinsei NFT Testnet", // _name
    "SHINSEI",             // _symbol
    "https://testnet.api.shinsei.com/nfts/" // _baseURI
];

// Create an interface for your ShinseiNFT contract
const iface = new Interface(ShinseiNFT_ABI);

// Encode the initialize function call
const initData = iface.encodeFunctionData("initialize", initializeArgs);

// Export the constructor arguments for ERC1967Proxy: (address logic, bytes memory data)
module.exports = [
    logicAddress,
    initData
];
