// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "./rectangle.sol";
contract square is rectangle{
    
    constructor(uint x) rectangle(x,x){
    }

    function myType()external override pure returns(string memory){
        return "Square";
    }

}