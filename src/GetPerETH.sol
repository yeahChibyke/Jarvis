// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.24;

import {PerUSDLibrary} from "./library/PerUSDLibrary.sol";
import {PerETHLibrary} from "./library/PerETHLibrary.sol";

contract GetPerETH {
    // Function to get price of USD per ETH
    // function getUSDperETH(uint256 value) external view returns (uint256) {
    //     uint256 eth_per_usd = PerUSDLibrary.ETHperUSD();
    //     uint256 usd_per_usd = 1e18;
    //     uint256 usd_per_eth = (usd_per_usd * 1e18) / eth_per_usd;
    //     return (usd_per_eth * value);
    // }

    // Function to get the  price of USD per ETH
    function getUSDperETH(uint256 value) external view returns (uint256) {
        uint256 usd_per_eth = PerETHLibrary.USDperETH();
        return (usd_per_eth * value);
    }

    // Function to get the price of BTC per ETH
    function getBTCperETH(uint256 value) external view returns (uint256) {
        uint256 btc_per_eth = PerETHLibrary.BTCperETH();
        return (btc_per_eth * value) / 1e10;
    }
}
