// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.24;

import {Test, console2} from "forge-std/Test.sol";
import {GetPerBTC} from "../src/GetPerBTC.sol";
import {DeployPerBTC} from "../script/DeployPerBTC.s.sol";

contract TestPerBTC is Test {
    GetPerBTC gpb;
    DeployPerBTC deployer;

    function setUp() public {
        deployer = new DeployPerBTC();
        gpb = deployer.run();
    }

    function test_get_dai_per_btc() public view {
        uint256 value = 1;
        console2.log(gpb.getDAIperBTC(value)); // ..000_008_599_881_524_923.00
    }

    function test_get_eth_per_btc() public view {
        uint256 value = 1;
        console2.log(gpb.getETHperBTC(value)); // ..031_514_360_000_000_000.00
    }

    function test_get_eur_per_btc() public view {
        uint256 value = 1;
        console2.log(gpb.getEURperBTC(value)); // ..000_009_920_636_592_461.00
    }

    function test_get_gbp_per_btc() public view {
        uint256 value = 1;
        console2.log(gpb.getGBPperBTC(value)); // ..000_011_501_964_088_081.00
    }

    function test_get_usd_per_btc() public view {
        uint256 value = 1;
        console2.log(gpb.getUSDperBTC(value)); // ..000_008_709_650_225_716.00
    }

    function test_get_usdc_per_btc() public view {
        uint256 value = 1;
        console2.log(gpb.getUSDCperBTC(value)); // ..000_008_708_126_907_892.00
    }
}
