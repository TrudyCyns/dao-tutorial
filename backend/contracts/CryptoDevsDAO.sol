// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * Interface for the FakeNFTMarketplace
 */
interface IFakeNFTMarketplace {
    /// @dev getPrice() returns the price of an NFT from the FakeNFTMarketplace
    /// @return Returns the price in Wei for an NFT
    function getPrice() external view returns (uint256);

    /// @dev available() returns whether or not the given _tokenId has already been purchased
    /// @return Returns a boolean value - true if available, false if not
    function available(uint256 _tokenId) external view returns (bool);

    /// @dev purchase() purchases an NFT from the FakeNFTMarketplace
    /// @param _tokenId - the fake NFT tokenID to purchase
    function purchase(uint256 _tokenId) external payable;
}

/**
 * Minimal interface for CryptoDevsNFT containing only two functions
 * that we are interested in
 */
interface ICryptoDevsNFT {
    function balanceOf(address owner) external view returns (uint256);

    function tokenOfOwnerByIndex(
        address owner,
        uint256 index
    ) external view returns (uint256);
}

// Create a struct containing all relevant info
struct Proposal {
  uint256 nftTokenId;
  uint256 deadline;
  uint256 yayVotes;
  uint256 nayVotes;
  bool executed;
  mapping (uint256 => bool) voters;
}

// Store creates proposals in contract state

// allow holders if the CryptoDevs NFT to create new proposals

// allow holders of CryptoDevs NFT to vote on prposals if they havent voted already and the deadline hasn't passed yet either.abi

// allow holders of CryptoDevs NFT to eecute a proposal after its deadline jas been exceeded, triggering an NFT purchase if it passed.

contract CryptoDevsDAO is Ownable {}
