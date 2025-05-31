// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.24;

import {PerUSDLibrary} from "./library/PerUSDLibrary.sol";

contract GetPerBTC {
    // Function to getprice of USD per BTC
    function getUSDperBTC(uint256 value) external view returns (uint256) {
        uint256 btc_per_usd = PerUSDLibrary.BTCperUSD();
        uint256 usd_per_usd = 1e18;
        uint256 usd_per_btc = (usd_per_usd * 1e18) / btc_per_usd;
        return (usd_per_btc * value);
    }
}
