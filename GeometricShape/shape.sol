// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface shape{
    function area()external view returns(uint);
    function perimiter()external view returns(uint);
    function myType() external pure returns(string memory);
    function info()external pure returns(string memory);

}