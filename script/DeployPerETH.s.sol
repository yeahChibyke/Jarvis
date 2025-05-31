// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.24;

import {Script} from "forge-std/Script.sol";
import {GetPerETH} from "../src/GetPerETH.sol";

contract DeployPerETH is Script {
    GetPerETH gpe;

    function run() external returns (GetPerETH) {
        vm.startBroadcast();
        gpe = new GetPerETH();
        vm.stopBroadcast();

        return gpe;
    }
}
