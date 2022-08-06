// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./curve.sol";

contract ellipse is curve{

    constructor(uint _r1,uint _r2){
        r1=_r1;
        r2=_r2;
    }
    function getR1()external view returns(uint){
        return r1;
    }
    function getR2()external view returns(uint){
        return r2;
    }
    function setR1(uint _r1)external {
        r1=_r1;
    }
    function setR2(uint _r2)external {
        r2=_r2;
    }
    function area()external override virtual view returns(uint){
        return (314159265359 * r1 * r2)/ 100000000000;
    }
    function perimiter()external override virtual view returns(uint){
        return (314159265359 * (r1+r2) )/ 100000000000;
    }
    function myType()external override virtual pure returns(string memory){
        return "Curve";
    }
    function info()external override virtual pure returns(string memory){
        return "number of edge: 0 \n number of side: infinity \n total of edge: less than 180 degree \n";
    }

 }