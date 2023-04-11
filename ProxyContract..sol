// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/utils/math/SafeMathUpgradeable.sol";

contract ProxyContract is Initializable {
    using SafeMathUpgradeable for uint256;

    uint256 public constant MY_CONSTANT = 123;

    uint256 public myStateVariable;

    function initialize() public initializer {
        myStateVariable = 0;
    }

    function readStateVariable() public view returns (uint256) {
        return myStateVariable;
    }

    function writeStateVariable(uint256 newValue) public {
        myStateVariable = newValue;
    }

    function addToStateVariable(uint256 valueToAdd) public {
        myStateVariable = myStateVariable.add(valueToAdd);
    }
}
