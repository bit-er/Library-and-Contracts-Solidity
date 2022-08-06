// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "./polygon.sol";
contract rectangle is polygon{
     constructor(uint _x,uint _y)polygon(_x,_y){}

    function area()external override virtual view returns(uint){
        return x*y;
    }
    function perimiter()external override virtual view returns(uint){
        return x+x+y+y;
    }
    function myType()external override virtual pure returns(string memory){
        return "Rectangle";
    }
    function info()external override virtual pure returns(string memory){
        return "number of edge: 4 \n number of side: 4 \n total of edge: 180 \n";
    }
}