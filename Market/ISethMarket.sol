// SPDX-License-Identifier: MIT 
pragma solidity 0.8.15;
interface ISethMarket {
  function depositFor(address account) external payable;
  function marketLockupFor(address account, uint256 amount) external payable returns (uint256 expiration);
  function marketWithdrawFrom(address from, uint256 amount) external;
  function marketWithdrawLocked(
    address account,
    uint256 expiration,
    uint256 amount
  ) external;
  function marketUnlockFor(
    address account,
    uint256 expiration,
    uint256 amount
  ) external;
  function marketChangeLockup(
    address unlockFrom,
    uint256 unlockExpiration,
    uint256 unlockAmount,
    address depositFor,
    uint256 depositAmount
  ) external payable returns (uint256 expiration);
}