// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.24;

import {Test, console2} from "forge-std/Test.sol";
import {GetPerETH} from "../src/GetPerETH.sol";
import {DeployPerETH} from "../script/DeployPerETH.s.sol";

contract TestPerETH is Test {
    GetPerETH gpe;
    DeployPerETH deployer;

    function setUp() public {
        deployer = new DeployPerETH();
        gpe = deployer.run();
    }

    function test_get_btc_per_eth() public view {
        uint256 value = 1;
        console2.log(gpe.getBTCperETH(value)); // 30_ || _868_891_691_728_840_000.00
    }

    function test_get_dai_per_eth() public view {
        uint256 value = 1;
        console2.log(gpe.getDAIperETH(value)); //  0_ || _000_259_411_701_348_766.00
    }

    function test_get_eur_per_eth() public view {
        uint256 value = 1;
        console2.log(gpe.getEURperETH(value)); // 0_ || _000_301_455_647_668_225.00
    }

    function test_get_gbp_per_eth() public view {
        uint256 value = 1;
        console2.log(gpe.getGBPperETH(value)); //  0_ || _000_353_822_496_282_503.00
    }

    function test_get_usd_per_eth() public view {
        uint256 value = 1;
        console2.log(gpe.getUSDperETH(value)); // 0_ || _000_259_410_155_264_241.00
    }

    function test_get_usdc_per_eth() public view {
        uint256 value = 1;
        console2.log(gpe.getUSDCperETH(value)); // 0_ || _000_264_914_659_213_065.00
    }
}
