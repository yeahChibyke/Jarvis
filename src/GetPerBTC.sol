// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.24;

import {PerBTCLibrary} from "./library/PerBTCLibrary.sol";

contract GetPerBTC {
    // Function to get the price of DAI per BTC
    function getDAIperBTC(uint256 value) external view returns (uint256) {
        uint256 dai_per_btc = PerBTCLibrary.DAIperBTC();
        return (dai_per_btc * value);
    }

    // Function to get the price of ETH per BTC
    function getETHperBTC(uint256 value) external view returns (uint256) {
        uint256 eth_per_btc = PerBTCLibrary.ETHperBTC();
        return (eth_per_btc * value) * 1e10;
    }

    // Function to get the price of EUR per BTC
    function getEURperBTC(uint256 value) external view returns (uint256) {
        uint256 eur_per_btc = PerBTCLibrary.EURperBTC();
        return (eur_per_btc * value);
    }

    // Function to get the price of GBP in BTC
    function getGBPperBTC(uint256 value) external view returns (uint256) {
        uint256 gbp_per_btc = PerBTCLibrary.GBPperBTC();
        return (gbp_per_btc * value);
    }

    // Function to get the price of USD in BTC
    function getUSDperBTC(uint256 value) external view returns (uint256) {
        uint256 usd_per_btc = PerBTCLibrary.USDperBTC();
        return (value * usd_per_btc);
    }

    // Function to get the price of USDC in BTC
    function getUSDCperBTC(uint256 value) external view returns (uint256) {
        uint256 usdc_per_btc = PerBTCLibrary.USDCperBTC();
        return (value * usdc_per_btc);
    }
}
