// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.24;

import {Script} from "forge-std/Script.sol";
import {GetPerBTC} from "../src/GetPerBTC.sol";

contract DeployPerBTC is Script {
    GetPerBTC gpb;

    function run() external returns (GetPerBTC) {
        vm.startBroadcast();
        gpb = new GetPerBTC();
        vm.stopBroadcast();

        return gpb;
    }
}
