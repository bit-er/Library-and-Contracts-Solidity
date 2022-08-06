// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "./shape.sol";
abstract contract polygon is shape{
    uint internal x;
    uint internal y;
    constructor(uint _x,uint _y){
         x=_x;
         y=_y;
     }
    function getX()external virtual view returns(uint){
        return x;
    }
    function getY()external view returns(uint){
        return y;
    }
    function setX(uint _x)external virtual {
        x=_x;
    }
    function setY(uint _y)external{
        y=_y;
    }
    function area()external override virtual view returns(uint);
    function perimiter()external override virtual view returns(uint);
    function myType()external override virtual pure returns(string memory){
        return "Polygon";
    }
    function info()external override virtual pure returns(string memory){
        return "number of edge: more than 3 \n number of side: more than 3 \n total of edge: more than 180 degree \n";
    }
    

}