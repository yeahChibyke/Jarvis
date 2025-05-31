// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.24;

import {PerUSDLibrary} from "./library/PerUSDLibrary.sol";

contract GetPerETH {
    // Function to get price of  USD per ETH
    function getUSDperETH(uint256 value) external view returns (uint256) {
        uint256 eth_per_usd = PerUSDLibrary.ETHperUSD();
        uint256 usd_per_usd = 1e18;
        uint256 usd_per_eth = (usd_per_usd * 1e18) / eth_per_usd;
        return (usd_per_eth * value);
    }
}
