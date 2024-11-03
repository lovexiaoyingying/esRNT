// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {MyFirstToken} from "../src/MyFirstToken.sol";

contract MyTokenScript is Script {
   

    function setUp() public {}

    function deploy() public {
        vm.startBroadcast();
         {
             MyFirstToken token = new MyFirstToken("MyFirstToken","MFT");
             console.log("Token address:" , address(token));
             console.log("Token name:" , token.name());
             console.log("Token symbol:" , token.symbol());
            //  transfer 1000 tokens to alice 
            address alice = makeAddr("alice");
            token.transfer(alice,1000);
         }
        

        vm.stopBroadcast();
    }
}
