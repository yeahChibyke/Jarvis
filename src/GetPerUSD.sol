// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.24;

import {PerUSDLibrary} from "./library/PerUSDLibrary.sol";

contract GetPerUSD {
    // Function to get the price of BTC per USD
    function getBTCperUSD(uint256 value) external view returns (uint256) {
        uint256 btc_per_usd = PerUSDLibrary.BTCperUSD();
        return (value * btc_per_usd);
    }

    // Function to get the price of DAI per USD
    function getDAIperUSD(uint256 value) external view returns (uint256) {
        uint256 dai_per_usd = PerUSDLibrary.DAIperUSD();
        return (value * dai_per_usd);
    }

    // Function to get the price of ETH per USD
    function getETHperUSD(uint256 value) external view returns (uint256) {
        uint256 eth_per_usd = PerUSDLibrary.ETHperUSD();
        return (value * eth_per_usd);
    }

    // Function to get the price of EUR per USD
    function getEURperUSD(uint256 value) external view returns (uint256) {
        uint256 eur_per_usd = PerUSDLibrary.EURperUSD();
        return (value * eur_per_usd);
    }

    // Function to get the price of GBP per USD
    function getGBPperUSD(uint256 value) external view returns (uint256) {
        uint256 gbp_per_usd = PerUSDLibrary.GBPperUSD();
        return (value * gbp_per_usd);
    }

    // Function to get the price of LINK per USD
    function getLINKperUSD(uint256 value) external view returns (uint256) {
        uint256 link_per_usd = PerUSDLibrary.LINKperUSD();
        return (value * link_per_usd);
    }

    // Function to get the price of USDC per USD
    function getUSDCperUSD(uint256 value) external view returns (uint256) {
        uint256 usdc_per_usd = PerUSDLibrary.USDCperUSD();
        return (value * usdc_per_usd);
    }
}
