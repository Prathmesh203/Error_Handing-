// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Revert_Money {
    uint256 public Coin;

    function Define_Curr(uint256 MY_Coin) public {
        // Require is used to validate a condition
        require(MY_Coin > 1800, "Value must be greater than 1800");

        // Using assert() to ensure an internal condition
        //and to check the invariants
        assert(MY_Coin < 8000);

        // Setting the value
        if(MY_Coin == 6650){
            // Using revert() to revert the transaction
        revert("This operation is not allowed"); 
        }
        Coin = MY_Coin;
    }
}
