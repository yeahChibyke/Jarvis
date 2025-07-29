// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.24;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";
import {PerUSDLibrary} from "./PerUSDLibrary.sol";

library PerETHLibrary {
    function BTCperETH() internal view returns (uint256) {
        AggregatorV3Interface btc_per_eth_price = AggregatorV3Interface(0x5fb1616F78dA7aFC9FF79e0371741a747D2a7F22);
        (, int256 answer,,,) = btc_per_eth_price.latestRoundData();
        return uint256(answer * 1e10);
    }

    function USDperETH() internal view returns (uint256) {
        uint256 eth_per_usd_price = PerUSDLibrary.ETHperUSD();
        uint256 eth_per_eth_price = 1e18;
        uint256 usd_per_eth_price = (eth_per_eth_price * 1e18) / eth_per_usd_price;
        return usd_per_eth_price;
    }

    function USDCperETH() internal view returns (uint256) {}
}
