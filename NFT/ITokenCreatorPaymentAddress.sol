// SPDX-License-Identifier: MIT 
pragma solidity 0.8.15;
interface ITokenCreatorPaymentAddress {
  function getTokenCreatorPaymentAddress(uint256 tokenId)
    external
    view
    returns (address payable tokenCreatorPaymentAddress);
}