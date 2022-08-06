// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "./polygon.sol";
contract triangle is polygon{
    uint b;
    uint h;
     constructor(uint _b,uint _h){
         b=_b;
         h=_h;
     }
    function getB()external virtual view returns(uint){
        return b;
    }
    function getH()external view returns(uint){
        return h;
    }
    function setB(uint _b)external virtual {
        b=_b;
    }
    function setH(uint _h)external{
        h=_h;
    }
    function area()external override virtual view returns(uint){
        return (b*h)/2;
    }
    function perimiter()external override virtual view returns(uint){
        return 0;
    }
    function myType()external override virtual pure returns(string memory){
        return "Triangle";
    }
    function info()external override virtual pure returns(string memory){
        return "number of edge: 3 \n number of side: 3 \n total of edge: 180 \n";
    }
}