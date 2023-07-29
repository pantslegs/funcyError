// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

contract FuncError {
    uint public evenCnt;

    function reqEven(uint number) external {
        require(number % 2 == 0, "The number you initialized is Odd");
        ++evenCnt;
    }

    function asrtEven(uint number) external {
        assert(number % 2 == 0);
        ++evenCnt;
    }

    function rvtEven(uint number) external {
        if (number % 2 != 0) {
            revert("The number you inputted is ODD");
        }
        ++evenCnt;
    }
}
