// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "./shape.sol";
abstract contract curve is shape{

    function area()external override virtual view returns(uint);
    function perimiter()external override virtual view returns(uint);
    function myType()external override virtual pure returns(string memory){
        return "Curve";
    }
    function info()external override virtual pure returns(string memory){
        return "number of edge: more than 0 \n number of side: infinit \n total of edge: maximum is 180 degree \n";
    }
}