// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.24;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

library PerUSDLibrary {
    // Function to get price of ETH per USD
    function ETHperUSD() internal view returns (uint256) {
        AggregatorV3Interface eth_per_usd_Price = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        (, int256 answer,,,) = eth_per_usd_Price.latestRoundData();
        return uint256(answer * 1e10);
    }

    // Function to get price of BTC per USD
    function BTCperUSD() internal view returns (uint256) {
        AggregatorV3Interface btc_per_usd_Price = AggregatorV3Interface(0x1b44F3514812d835EB1BDB0acB33d3fA3351Ee43);
        (, int256 answer,,,) = btc_per_usd_Price.latestRoundData();
        return uint256(answer * 1e10);
    }
}
