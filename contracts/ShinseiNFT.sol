// SPDX-License-Identifier: MIT

/*⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⢸⣿⣷⣦⡀⠀⢸⣿⣷⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠸⣿⣻⣿⣿⣷⣹⠻⢻⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⢸⡟⠁⠀⠀⢻⡄⣼⣎⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⢻⣤⠖⡚⢻⠙⠺⠷⠟⢻⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠈⣧⠠⣷⣺⢧⣀⡀⣀⣾⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⢀⣻⣷⢏⣿⠓⣿⣿⣿⡃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⣰⣞⣿⠇⢸⡼⢱⣯⠟⠻⣿⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⢰⢫⣿⣤⣌⠳⠀⠈⠁⠀⠀⠙⣽⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⣾⣾⣿⣛⣿⠀⠀⠀⠀⠀⠀⣰⡽⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣾⣿⡍⡛⠋⠁⠀⠀⠀⠀⠀⠀⠀⠹⣷⣤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠙⠿⣿⣷⡿⠦⠥⡥⠄⠀⠀⠀⠀⠀⠈⠛⠈⠝⢳⠶⣤⢤⠤⠤⠤⠤⣤⣤⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠉⠉⠙⠓⠺⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠋⠘⠋⠀⠚⠙⠂⠐⠻⣿⣶⣄⣠⡤⣶⡶⠛⠉⠻⠽⠟⠹⣿⡶⢦⣄⡀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣧⣄⢠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠍⣿⣏⢁⠀⠀⠀⠀⠀⢀⠀⢁⡏⠀⠈⠻⣦⡀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣡⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠿⢿⣭⣍⣙⣒⠪⢿⣿⣾⠁⠀⠀⢀⣿⣿⣆⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣦⡀⠀⠀⠀⢀⠀⡠⠀⠀⠀⠀⠀⠠⣀⠀⠀⠀⠀⠀⠘⣿⡇⠀⠀⠀⠈⠙⠛⠿⠿⣅⡀⠀⢀⣾⣿⣿⣿⡄
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⡅⣀⣠⠴⢦⣞⣷⠐⣂⣂⣀⣄⠀⣸⣖⠀⠀⣵⡞⠉⠛⣷⣤⣴⣄⠀⠀⠀⠀⠀⠈⠉⠛⠻⣿⣿⣿⣿⣷
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⡿⠋⢀⡀⢸⣿⠟⠋⠉⠉⠀⠹⢷⣽⣿⣿⢲⣾⡇⠰⣶⡈⢹⣿⣿⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠙⠛
⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⣿⡟⠀⣴⡟⣰⠾⠁⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⣿⣿⣿⣦⣤⣴⠿⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⣠⣴⣿⣿⣿⣦⣤⣭⠾⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⣿⣿⣿⡏⠉⠉⠈⠀⠀⢹⣿⠻⡿⡤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⣠⣾⣿⣿⣷⣿⣿⡟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠛⠛⠃⠀⠀⠀⠀⠀⢠⣾⣧⣤⣿⡗⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⣠⣾⡟⣯⣿⣿⣿⣿⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⠓⠛⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠈⢿⣿⣿⡿⠃⠈⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀


          _____ _   _ _____ _   _  _____ _____ _____ 
        /  ___| | | |_   _| \ | |/  ___|  ___|_   _|
        \ `--.| |_| | | | |  \| |\ `--.| |__   | |  
         `--. \  _  | | | | . ` | `--. \  __|  | |  
        /\__/ / | | |_| |_| |\  |/\__/ / |___ _| |_ 
        \____/\_| |_/\___/\_| \_/\____/\____/ \___/ 
                                            

*/

pragma solidity ^0.8.0;
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC721/ERC721Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC721/extensions/ERC721EnumerableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts/interfaces/IERC20.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts/utils/Strings.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

contract ShinseiNFT is Initializable, ERC721Upgradeable, ERC721EnumerableUpgradeable, OwnableUpgradeable, ReentrancyGuardUpgradeable, UUPSUpgradeable{
    
    using Strings for string;

    address public withdrawalErc20TokenAddress;
    string public baseURI;
    
    mapping(uint256 => bool) public mintedIds;

    uint256 public platformFeePercentage;
    address public platformWallet;

    struct RentalListing {
        address seller;      // Owner who listed the NFT
        uint256 price;       // Price in SEI (native currency)
        uint64 durationSeconds; // Duration of the rental in seconds
        bool isListed;       // True if the NFT is currently listed for rent
        uint256 lastUnlistedBlock; // Block number when last unlisted (prevents same-block relist)
    }
    mapping(uint256 => RentalListing) public rentalListings;

    struct ActiveRental {
        address renter;         
        uint64 rentalEndTime;    
        uint256 feePaid;         
        bool isRented;          
        bool cancellationInitiatedByOwner; 
        uint64 cancellationEffectiveTime; 
        bool feeClaimedByOwner; 
    }
    mapping(uint256 => ActiveRental) public activeRentals;
    mapping(address => uint256) public pendingRefunds;

    uint256 public totalReservedFunds;
    uint256 public constant THREE_DAYS_IN_SECONDS = 3 * 24 * 60 * 60;
    uint256 public constant MINIMUM_RENTAL_DURATION = THREE_DAYS_IN_SECONDS + 1;

    event NFTMinted(address indexed owner, uint256 tokenId);
    event TreasuryMinted(address indexed treasury, uint256[] tokenIds);
    event NFTListedForRent(uint256 indexed tokenId, address indexed seller, uint256 price, uint64 durationSeconds);
    event NFTUnlistedForRent(uint256 indexed tokenId);
    event NFTRented(uint256 indexed tokenId, address indexed renter, address indexed seller, uint256 pricePaid, uint64 rentalEndTime);
    event RentalCancelledByOwner(uint256 indexed tokenId, address indexed renter, uint64 cancellationEffectiveTime, uint256 refundAmount);
    event RentalFinished(uint256 indexed tokenId, address indexed renter); // Emitted when rental period ends naturally or by effective cancellation
    event RentalFeeClaimed(uint256 indexed tokenId, address indexed ownerAddress, uint256 amountToOwner, uint256 platformFeeAmount);
    event RentalFeeRefundedToRenter(uint256 indexed tokenId, address indexed renter, uint256 amount);
    event PlatformFeePaidByOwnerOnCancellation(uint256 indexed tokenId, address indexed owner, uint256 platformFeeAmount);
    event RefundAvailable(address indexed renter, uint256 amount);
    event RefundClaimed(address indexed renter, uint256 amount);

    function listNFTForRent(uint256 tokenId, uint256 price, uint64 durationSeconds) external nonReentrant {
        require(_isTokenExisting(tokenId), "ERC721: token nonexistent");
        require(ownerOf(tokenId) == msg.sender, "Rental: only owner can list");

        RentalListing memory listing = rentalListings[tokenId];
        require(!listing.isListed, "Rental: already listed");
        require(listing.lastUnlistedBlock != block.number, "Rental: cannot relist in same block as unlisting");
        
        ActiveRental memory currentRental = activeRentals[tokenId]; 

        if (currentRental.isRented && userOf(tokenId) == address(0)) {
            address lastRenter = currentRental.renter; 
            
            activeRentals[tokenId].isRented = false;
            activeRentals[tokenId].renter = address(0);
            activeRentals[tokenId].cancellationInitiatedByOwner = false;
            activeRentals[tokenId].cancellationEffectiveTime = 0;
            activeRentals[tokenId].rentalEndTime = 0;
            
            if (lastRenter != address(0)) { 
                 emit RentalFinished(tokenId, lastRenter);
            }
        }
        require(!currentRental.isRented, "Rental: still actively rented or needs explicit cleanup");

        require(price > 0, "Rental: price must be greater than zero");

        require(durationSeconds >= MINIMUM_RENTAL_DURATION, "Rental: duration must be at least 3 days + 1 second to allow cancellation");

        rentalListings[tokenId] = RentalListing({
            seller: msg.sender,
            price: price,
            durationSeconds: durationSeconds,
            isListed: true,
            lastUnlistedBlock: 0 
        });

        emit NFTListedForRent(tokenId, msg.sender, price, durationSeconds);
    }

    function unlistNFTFromRent(uint256 tokenId) external nonReentrant {
        require(_isTokenExisting(tokenId), "ERC721: token nonexistent");
        require(ownerOf(tokenId) == msg.sender, "Rental: only token owner can unlist"); 
        
        ActiveRental memory currentRental = activeRentals[tokenId]; 
        require(!currentRental.isRented, "Rental: cannot unlist while rented");

        RentalListing storage listing = rentalListings[tokenId];
        require(listing.isListed, "Rental: not listed");

        listing.isListed = false;
        listing.lastUnlistedBlock = block.number; 

        listing.price = 0;
        listing.durationSeconds = 0;
        listing.seller = address(0);

        emit NFTUnlistedForRent(tokenId);
    }

    function rentNFT(uint256 tokenId, uint64 durationSeconds) external payable nonReentrant {
        require(_isTokenExisting(tokenId), "ERC721: token nonexistent");
        RentalListing memory listing = rentalListings[tokenId]; 
        require(listing.isListed, "Rental: not listed for rent");
        ActiveRental memory currentRental = activeRentals[tokenId]; 
        require(!currentRental.isRented, "Rental: already rented");

        require(currentRental.feePaid == 0, "Rental: previous owner must claim rental fees before new rental");
        require(listing.price == msg.value, "Rental: incorrect payment amount");

        require(durationSeconds == listing.durationSeconds, "Rental: duration must match listing");
        address tokenOwner = ownerOf(tokenId);
        require(tokenOwner != msg.sender, "Rental: owner cannot rent their own token");

        // Update active rental status
        uint64 rentalEndTime = uint64(block.timestamp) + listing.durationSeconds;
        activeRentals[tokenId] = ActiveRental({
            renter: msg.sender,
            rentalEndTime: rentalEndTime,
            feePaid: msg.value, 
            isRented: true,
            cancellationInitiatedByOwner: false,
            cancellationEffectiveTime: 0, 
            feeClaimedByOwner: false
        });

        totalReservedFunds += msg.value;

        rentalListings[tokenId].isListed = false;

        emit NFTRented(tokenId, msg.sender, listing.seller, msg.value, rentalEndTime);
    }

    function cancelRentalByOwner(uint256 tokenId) external payable nonReentrant {
        require(_isTokenExisting(tokenId), "ERC721: token nonexistent");
        address tokenOwner = ownerOf(tokenId);
        require(tokenOwner == msg.sender, "Rental: only token owner can cancel");

        ActiveRental storage rental = activeRentals[tokenId];
        require(rental.isRented, "Rental: not currently rented");
        require(!rental.cancellationInitiatedByOwner, "Rental: cancellation already initiated");
        
        require(rental.rentalEndTime > block.timestamp + THREE_DAYS_IN_SECONDS, "Rental: cannot cancel with less than 3 days left");

        uint256 totalOriginalFeePaidByRenter = rental.feePaid;
        require(totalOriginalFeePaidByRenter > 0, "Rental: No fee was paid by renter or already processed");

        uint256 penaltyDueToPlatform = (totalOriginalFeePaidByRenter * platformFeePercentage) / 100;
        require(msg.value == penaltyDueToPlatform, "Rental: Incorrect penalty fee sent by owner for cancellation");

        totalReservedFunds += msg.value;

        rental.cancellationInitiatedByOwner = true;
        rental.cancellationEffectiveTime = uint64(block.timestamp) + uint64(THREE_DAYS_IN_SECONDS);
        
        if (penaltyDueToPlatform > 0) {
           
            totalReservedFunds -= penaltyDueToPlatform;
            (bool sentPlatformFee, ) = platformWallet.call{value: penaltyDueToPlatform}("");
            require(sentPlatformFee, "Rental: Failed to send platform fee from owner's penalty");
        }

        rental.feePaid = 0;
        if (totalOriginalFeePaidByRenter > 0) {
            pendingRefunds[rental.renter] += totalOriginalFeePaidByRenter;
            
            emit RefundAvailable(rental.renter, totalOriginalFeePaidByRenter);
        }

        emit PlatformFeePaidByOwnerOnCancellation(tokenId, msg.sender, penaltyDueToPlatform);
        emit RentalCancelledByOwner(tokenId, rental.renter, rental.cancellationEffectiveTime, totalOriginalFeePaidByRenter);
        emit RentalFeeRefundedToRenter(tokenId, rental.renter, totalOriginalFeePaidByRenter);
    }

    function claimRefund() external nonReentrant {
        uint256 refundAmount = pendingRefunds[msg.sender];
        require(refundAmount > 0, "Rental: No refund available");
        
        pendingRefunds[msg.sender] = 0;

        totalReservedFunds -= refundAmount;
        
        (bool sent, ) = msg.sender.call{value: refundAmount}("");
        require(sent, "Rental: Failed to send refund");
        
        emit RefundClaimed(msg.sender, refundAmount);
    }

    function claimRentalFee(uint256 tokenId) external nonReentrant {
        require(_isTokenExisting(tokenId), "ERC721: token nonexistent");
        RentalListing memory listing = rentalListings[tokenId]; // [I-03] Fix: Use memory for read-only
        require(listing.seller == msg.sender, "Rental: only original seller can claim fee");

        ActiveRental storage rental = activeRentals[tokenId];
        require(rental.isRented || rental.renter != address(0), "Rental: token is not or was not rented");
        require(!rental.feeClaimedByOwner, "Rental: fee already claimed");
        require(!rental.cancellationInitiatedByOwner, "Rental: fee refunded due to owner cancellation");

        require(
            block.timestamp >= rental.rentalEndTime - THREE_DAYS_IN_SECONDS,
            "Rental: fee cannot be claimed yet"
        );

        uint256 amountToClaim = rental.feePaid;
        require(amountToClaim > 0, "Rental: no fee to claim or already refunded");

        rental.feePaid = 0;
        rental.feeClaimedByOwner = true;

        // If rental period is definitively over, mark as no longer rented
        if (block.timestamp >= rental.rentalEndTime) {
            if(rental.isRented) { // only emit and set if it was marked as rented
                 rental.isRented = false;
                 emit RentalFinished(tokenId, rental.renter); 
            }
        }

        uint256 platformFeeAmount = (amountToClaim * platformFeePercentage) / 100;
        uint256 amountToOwner = amountToClaim - platformFeeAmount;

        totalReservedFunds -= amountToClaim;

        // Send platform fee
        (bool sentPlatformFee, ) = platformWallet.call{value: platformFeeAmount}("");
        require(sentPlatformFee, "Rental: Failed to send platform fee to platform wallet");

        // Send owner fee directly (no need for extra step)
        (bool sentOwnerFee, ) = msg.sender.call{value: amountToOwner}("");
        require(sentOwnerFee, "Rental: Failed to send fees to seller");

        emit RentalFeeClaimed(tokenId, msg.sender, amountToOwner, platformFeeAmount);
    }

    function userOf(uint256 tokenId) public view returns (address) {
        if (!_isTokenExisting(tokenId)) {
            return address(0);
        }
        ActiveRental memory rental = activeRentals[tokenId]; 

        if (rental.isRented) {
            if (rental.cancellationInitiatedByOwner && block.timestamp >= rental.cancellationEffectiveTime) {
                return address(0); 
            }
            if (block.timestamp >= rental.rentalEndTime) {
                return address(0); 
            }
            return rental.renter;
        }
        return address(0); 
    }

    function getRentalInfo(uint256 tokenId) public view returns (
        address renter,
        address seller,
        uint256 price,
        uint64 durationSeconds,
        bool isListed,
        bool isRentedNow,
        uint64 currentEffectiveEndTime,
        bool cancellationByOwner,
        uint256 feeHeldByContract
    ) {
        if (!_isTokenExisting(tokenId)) {
            return (address(0), address(0), 0, 0, false, false, 0, false, 0);
        }

        RentalListing memory listing = rentalListings[tokenId]; 
        ActiveRental memory rental = activeRentals[tokenId]; 

        seller = listing.seller;
        price = listing.price;
        durationSeconds = listing.durationSeconds;
        isListed = listing.isListed;

        renter = address(0);
        currentEffectiveEndTime = 0;
        isRentedNow = false;
        cancellationByOwner = rental.cancellationInitiatedByOwner;
        feeHeldByContract = rental.feePaid; 

        if (rental.isRented) {
            uint64 naturalEnd = rental.rentalEndTime;
            uint64 actualEnd = naturalEnd;

            if (rental.cancellationInitiatedByOwner) {
                if (rental.cancellationEffectiveTime < naturalEnd) {
                    actualEnd = rental.cancellationEffectiveTime;
                }
            }

            if (block.timestamp < actualEnd) {
                isRentedNow = true;
                renter = rental.renter;
                currentEffectiveEndTime = actualEnd;
            } else {

                renter = rental.renter; 
                currentEffectiveEndTime = actualEnd; 
            }
        }
        return (renter, seller, price, durationSeconds, isListed, isRentedNow, currentEffectiveEndTime, cancellationByOwner, feeHeldByContract);
    }


    function initialize(
        string memory _name,
        string memory _symbol,
        string memory _baseURI
        ) public initializer {
        __ERC721_init(_name, _symbol);
        __Ownable_init(msg.sender);
        __ReentrancyGuard_init();
        __UUPSUpgradeable_init();
        baseURI = bytes(_baseURI).length > 0 ? _baseURI : ""; 
        withdrawalErc20TokenAddress = address(0);
        platformFeePercentage = 10; 
        platformWallet = msg.sender; 
        
    }

    function setPlatformFeePercentage(uint256 _newFeePercentage) external onlyOwner {
        require(_newFeePercentage <= 25, "Fee percentage cannot exceed 25%");
        platformFeePercentage = _newFeePercentage;
    }

    function setPlatformWallet(address _newWallet) external onlyOwner {
        require(_newWallet != address(0), "Platform wallet cannot be zero address");
        platformWallet = _newWallet;
    }

    function mintToTreasury(address _treasuryWallet, uint256[] memory ids) external onlyOwner {

        for (uint256 i = 0; i < ids.length; ) {

            require(!mintedIds[ids[i]], "ID already minted");
   
            mintedIds[ids[i]] = true;
            _safeMint(_treasuryWallet, ids[i]);

            emit NFTMinted(_treasuryWallet, ids[i]);
            
            unchecked { ++i; } 
        }
        emit TreasuryMinted(_treasuryWallet, ids);
    }
     
    function distributeFromTreasury(address fromTreasury, address[] calldata recipients, uint256[][] calldata tokenIdsToDistribute) external onlyOwner {
        require(recipients.length > 0, "Recipients array cannot be empty");
        require(recipients.length == tokenIdsToDistribute.length, "Recipients and tokenIds array lengths must match");

        for (uint256 i = 0; i < recipients.length; ) {
            require(recipients[i] != address(0), "Invalid recipient address");
            require(tokenIdsToDistribute[i].length > 0, "Token IDs array for a recipient cannot be empty");

            for (uint256 j = 0; j < tokenIdsToDistribute[i].length; ) {
                uint256 tokenId = tokenIdsToDistribute[i][j];
                safeTransferFrom(fromTreasury, recipients[i], tokenId);
                
                unchecked { ++j; } 
            }
            
            unchecked { ++i; } 
        }
    }
   
    function updateBaseURI(string memory _baseURI) public onlyOwner {
        require(bytes(_baseURI).length > 0 , "Baseuri can not be empty!");
        baseURI = _baseURI;
    }
    
    function tokenURI(uint256 tokenId) public view override returns (string memory) {
        require( mintedIds[tokenId], "URI query for nonexistent token" );
        return string(abi.encodePacked(baseURI, Strings.toString(tokenId),".json"));
    }

    function setWithdrawalErc20TokenAddress(address _newTokenAddress) external onlyOwner {
        require(_newTokenAddress != address(this), "Cannot set token address to contract address");
        withdrawalErc20TokenAddress = _newTokenAddress;
    }


    function withdraw() public onlyOwner {
        uint256 totalBalance = address(this).balance;
        uint256 reservedFunds = _calculateReservedFunds();
        
        require(totalBalance > reservedFunds, "Insufficient funds available for withdrawal");
        uint256 availableForWithdrawal = totalBalance - reservedFunds;
        

        (bool sent, ) = payable(msg.sender).call{value: availableForWithdrawal}("");
        require(sent, "Failed to send SEI");


        if (withdrawalErc20TokenAddress != address(0)) {
            uint256 tokenBalance = IERC20(withdrawalErc20TokenAddress).balanceOf(address(this));
            if (tokenBalance > 0) {
                IERC20(withdrawalErc20TokenAddress).transfer(msg.sender, tokenBalance);
            }
        }
    }


    function _calculateReservedFunds() internal view returns (uint256) {
        return totalReservedFunds;
    }

    receive() external payable {}
    fallback() external payable {}


    function tempDebugCheckExists(uint256 tokenId) public view returns (bool) {
        return _isTokenExisting(tokenId);
    }

    function _isTokenExisting(uint256 tokenId) internal view returns (bool) {
        return mintedIds[tokenId];
    }

    function _update(address to, uint256 tokenId, address auth) internal override(ERC721Upgradeable, ERC721EnumerableUpgradeable) returns (address) {
        address from = _ownerOf(tokenId);
        

        if (from != address(0) && to != address(0)) {
            ActiveRental memory rental = activeRentals[tokenId];
            if (rental.isRented && userOf(tokenId) != address(0)) {
                revert("Rental: cannot transfer rented NFT");
            }
            
            require(activeRentals[tokenId].feePaid == 0, "Rental: previous owner must claim all rental fees before transfer");
            
            RentalListing storage listing = rentalListings[tokenId];
            if (listing.isListed) {
                listing.isListed = false;
                listing.price = 0;
                listing.durationSeconds = 0;
                listing.seller = address(0);
                listing.lastUnlistedBlock = block.number;
                emit NFTUnlistedForRent(tokenId);
            }
        }
        
        return super._update(to, tokenId, auth);
    }

    function _authorizeUpgrade(address newImplementation) internal override onlyOwner {}

    function _increaseBalance(address account, uint128 value) internal override(ERC721Upgradeable, ERC721EnumerableUpgradeable) {
        super._increaseBalance(account, value);
    }

    function supportsInterface(bytes4 interfaceId) public view override(ERC721Upgradeable, ERC721EnumerableUpgradeable) returns (bool) {
        return super.supportsInterface(interfaceId);
    }

    string private _customName;
    string private _customSymbol;
    bool private _useCustomName;
    
    function updateNameAndSymbol(string memory newName, string memory newSymbol) external onlyOwner {
        _customName = newName;
        _customSymbol = newSymbol;
        _useCustomName = true;
        
        emit NameAndSymbolUpdated(newName, newSymbol);
    }
   
    function name() public view override returns (string memory) {
        if (_useCustomName) {
            return _customName;
        }
        return super.name();
    }
    
    function symbol() public view override returns (string memory) {
        if (_useCustomName) {
            return _customSymbol;
        }
        return super.symbol();
    }
    

    event NameAndSymbolUpdated(string newName, string newSymbol);

    function walletOfOwner(address _owner)
        public
        view
        returns (uint256[] memory)
    {
        uint256 ownerTokenCount = balanceOf(_owner);
        uint256[] memory tokenIds = new uint256[](ownerTokenCount);
        for (uint256 i; i < ownerTokenCount; i++) {
            tokenIds[i] = tokenOfOwnerByIndex(_owner, i);
        }
        return tokenIds;
    }

    function activeNFTs(address _user)
        public
        view
        returns (uint256[] memory)
    {
        uint256 totalSupply = totalSupply();
        uint256[] memory tempTokenIds = new uint256[](totalSupply);
        uint256 activeCount = 0;

        for (uint256 i = 0; i < totalSupply; i++) {
            uint256 tokenId = tokenByIndex(i);

            if (ownerOf(tokenId) == _user && userOf(tokenId) == address(0)) {
                tempTokenIds[activeCount] = tokenId;
                activeCount++;
            } else if (userOf(tokenId) == _user) {
                tempTokenIds[activeCount] = tokenId;
                activeCount++;
            }
        }

        uint256[] memory result = new uint256[](activeCount);
        for (uint256 j = 0; j < activeCount; j++) {
            result[j] = tempTokenIds[j];
        }
        
        return result;
    }
}