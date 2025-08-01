// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.24;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";
import {PerUSDLibrary} from "./PerUSDLibrary.sol";
import {PerETHLibrary} from "./PerETHLibrary.sol";

library PerBTCLibrary {
    function DAIperBTC() internal view returns (uint256) {
        uint256 dai_per_usd_price = PerUSDLibrary.DAIperUSD();
        uint256 btc_per_usd_price = PerUSDLibrary.BTCperUSD();
        uint256 dai_per_btc_price = (dai_per_usd_price * 1e18) / btc_per_usd_price;
        return dai_per_btc_price;
    }

    function ETHperBTC() internal view returns (uint256) {
        uint256 eth_per_eth_price = 1e18;
        uint256 btc_per_eth_price = PerETHLibrary.BTCperETH();
        uint256 eth_per_btc_price = (eth_per_eth_price * 1e18) / btc_per_eth_price;
        return eth_per_btc_price;
    }

    function EURperBTC() internal view returns (uint256) {
        uint256 eur_per_usd_price = PerUSDLibrary.EURperUSD();
        uint256 btc_per_usd_price = PerUSDLibrary.BTCperUSD();
        uint256 eur_per_btc_price = (eur_per_usd_price * 1e18) / btc_per_usd_price;
        return eur_per_btc_price;
    }

    function GBPperBTC() internal view returns (uint256) {
        uint256 gbp_per_usd_price = PerUSDLibrary.GBPperUSD();
        uint256 btc_per_usd_price = PerUSDLibrary.BTCperUSD();
        uint256 gbp_per_btc_price = (gbp_per_usd_price * 1e18) / btc_per_usd_price;
        return gbp_per_btc_price;
    }

    function USDperBTC() internal view returns (uint256) {
        uint256 btc_per_usd_price = PerUSDLibrary.BTCperUSD();
        uint256 btc_per_btc_price = 1e18;
        uint256 usd_per_btc_price = (btc_per_btc_price * 1e18) / btc_per_usd_price;
        return usd_per_btc_price;
    }

    function USDCperBTC() internal view returns (uint256) {
        uint256 usdc_per_usd_price = PerUSDLibrary.USDCperUSD();
        uint256 btc_per_usd_price = PerUSDLibrary.BTCperUSD();
        uint256 usdc_per_btc_price = (usdc_per_usd_price * 1e18) / btc_per_usd_price;
        return usdc_per_btc_price;
    }
}
