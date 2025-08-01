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
        console2.log(gpb.getDAIperBTC(value)); // .000_008_599_881_524_923.00
    }
}
