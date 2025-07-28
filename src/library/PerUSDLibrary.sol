// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.24;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

library PerUSDLibrary {
    // Function to get price of BTC per USD
    function BTCperUSD() internal view returns (uint256) {
        AggregatorV3Interface btc_per_usd_Price = AggregatorV3Interface(0x1b44F3514812d835EB1BDB0acB33d3fA3351Ee43);
        (, int256 answer,,,) = btc_per_usd_Price.latestRoundData();
        return uint256(answer * 1e10);
    }

    // Function to get the price of DAI per USD
    function DAIperUSD() internal view returns (uint256) {
        AggregatorV3Interface dai_per_usd_price = AggregatorV3Interface(0x14866185B1962B63C3Ea9E03Bc1da838bab34C19);
        (, int256 answer,,,) = dai_per_usd_price.latestRoundData();
        return uint256(answer * 1e10);
    }

    // Function to get the price of EUR per USD
    function EURperUSD() internal view returns (uint256) {
        AggregatorV3Interface eur_per_usd_price = AggregatorV3Interface(0x1a81afB8146aeFfCFc5E50e8479e826E7D55b910);
        (, int256 answer,,,) = eur_per_usd_price.latestRoundData();
        return uint256(answer * 1e10);
    }

    // Function to get the price of ETH per USD
    function ETHperUSD() internal view returns (uint256) {
        AggregatorV3Interface eth_per_usd_Price = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        (, int256 answer,,,) = eth_per_usd_Price.latestRoundData();
        return uint256(answer * 1e10);
    }

    // Function to get the price of LINK per USD
    function LINKperUSD() internal view returns (uint256) {
        AggregatorV3Interface link_per_usd_price = AggregatorV3Interface(0xc59E3633BAAC79493d908e63626716e204A45EdF);
        (, int256 answer,,,) = link_per_usd_price.latestRoundData();
        return uint256(answer * 1e10);
    }

    // Function to get the price of USDC per USD
    function USDCperUSD() internal view returns (uint256) {
        AggregatorV3Interface usdc_per_usd_price = AggregatorV3Interface(0x6f7be09227d98Ce1Df812d5Bc745c0c775507E92);
        (, int256 answer,,,) = usdc_per_usd_price.latestRoundData();
        return uint256(answer * 1e10);
    }
}
