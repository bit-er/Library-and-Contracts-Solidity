// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "./rectangle.sol";
import "./circle.sol";
contract A{
    function fun()external{}
}
contract main is rectangle(1,2),A{

}
