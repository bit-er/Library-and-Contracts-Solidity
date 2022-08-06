// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./curve.sol";

contract circle is curve{
    uint r;
    constructor(uint _r){
        r=_r;
    }
    function getR()external view returns(uint){
        return r;
    }
    function setR(uint _r)external {
        r=_r;
    }
    function area()external override virtual view returns(uint){
        return (314159265359 * r * r)/ 100000000000;
    }
    function perimiter()external override virtual view returns(uint){
        return (314159265359 * 2 * r)/ 100000000000;
    }
    function myType()external override virtual pure returns(string memory){
        return "Circle";
    }
    function info()external override virtual pure returns(string memory){
        return "number of edge: 0 \n number of side: infinity \n total of edge: 180 degree \n";
    }

 }