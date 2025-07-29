// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.24;

import {Test, console2} from "forge-std/Test.sol";
import {GetPerUSD} from "../src/GetPerUSD.sol";
import {DeployPerUSD} from "../script/DeployPerUSD.s.sol";

contract TestPerUSD is Test {
    GetPerUSD gpu;
    DeployPerUSD deployer;

    function setUp() public {
        deployer = new DeployPerUSD();
        gpu = deployer.run();
    }

    function test_get_btc_per_usd() public view {
        uint256 value = 1;
        console2.log(gpu.getBTCperUSD(value)); // 118_020 || 120_442_310_000_000_000.00
    }

    function test_get_dai_per_usd() public view {
        uint256 value = 1;
        console2.log(gpu.getDAIperUSD(value)); // || 999_845_570_000_000_000.00
    }

    function test_get_eth_per_usd() public view {
        uint256 value = 1;
        console2.log(gpu.getETHperUSD(value)); // 3_755 || 073_052_000_000_000_000.00
    }

    function test_get_eur_per_usd() public view {
        uint256 value = 1;
        console2.log(gpu.getEURperUSD(value)); // 1 || 162_285_000_000_000_000.00
    }

    function test_get_gbp_per_usd() public view {
        uint256 value = 1;
        console2.log(gpu.getGBPperUSD(value)); // 1 || 336_800_000_000_000_000.00
    }

    function test_get_link_per_usd() public view {
        uint256 value = 1;
        console2.log(gpu.getLINKperUSD(value)); // 17 || 992_341_000_000_000_000.00
    }

    function test_get_usdc_per_usd() public view {
        uint256 value = 1;
        console2.log(gpu.getUSDCperUSD(value)); // || 999_859_300_000_000_000.00
    }
}
