// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

contract funcyError {
    uint public evenCnt;

    function reqEven(uint num) external {
        require(num % 2 == 0, "The initialized number is Odd");
        ++evenCnt;
    }

    function asrtEven(uint num) external {
        assert(num % 2 == 0);
        ++evenCnt;
    }

    function rvtEven(uint num) external {
        if (num % 2 != 0) {
            revert("The inputted number is ODD");
        }
        ++evenCnt;
    }
}
