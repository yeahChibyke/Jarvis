// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.24;

import {Script} from "forge-std/Script.sol";
import {GetPerUSD} from "../src/GetPerUSD.sol";

contract DeployPerUSD is Script {
    GetPerUSD gpu;

    function run() external returns (GetPerUSD) {
        vm.startBroadcast();
        gpu = new GetPerUSD();
        vm.stopBroadcast();

        return gpu;
    }
}
