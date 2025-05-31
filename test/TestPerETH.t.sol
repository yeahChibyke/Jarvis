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

    function test_get_usd_per_eth() public view {
        uint256 value = 1;
        console2.log(gpe.getUSDperETH(value)); // 0.000_393_981_475_936_557
    }
}
