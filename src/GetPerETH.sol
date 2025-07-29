// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.24;

import {PerUSDLibrary} from "./library/PerUSDLibrary.sol";
import {PerETHLibrary} from "./library/PerETHLibrary.sol";

contract GetPerETH {
    // Function to get the price of BTC per ETH
    function getBTCperETH(uint256 value) external view returns (uint256) {
        uint256 btc_per_eth = PerETHLibrary.BTCperETH();
        return (btc_per_eth * value) / 1e10;
    }

    // Function to get the price of DAi per ETH
    function getDAIperETH(uint256 value) external view returns (uint256) {
        uint256 dai_per_eth = PerETHLibrary.DAIperETH();
        return (dai_per_eth * value);
    }

    // Function to get the price of EUR per ETH
    function getEURperETH(uint256 value) external view returns (uint256) {
        uint256 eur_per_eth = PerETHLibrary.EURperETH();
        return (eur_per_eth * value);
    }

    // Function to get the price of GBP per ETH
    function getGBPperETH(uint256 value) external view returns (uint256) {
        uint256 gbp_per_eth = PerETHLibrary.GBPperETH();
        return (gbp_per_eth * value);
    }

    // Function to get the price of LINK per ETH
    function getLINKperETH(uint256 value) external view returns (uint256) {
        uint256 link_per_eth = PerETHLibrary.LINKperETH();
        return (link_per_eth * value) / 1e10;
    }

    // Function to get the  price of USD per ETH
    function getUSDperETH(uint256 value) external view returns (uint256) {
        uint256 usd_per_eth = PerETHLibrary.USDperETH();
        return (usd_per_eth * value);
    }

    // Function to get the price of USDC per ETH
    function getUSDCperETH(uint256 value) external view returns (uint256) {
        uint256 usdc_per_eth = PerETHLibrary.USDCperETH();
        return (usdc_per_eth * value);
    }
}
