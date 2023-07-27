//SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.7;

//require, revert, assert
//- gas refund, state updates are reverted when an error is thrown
contract Require_Revert_Assert{
    function requireFunction(uint _i) public pure{
        require(_i <= 10, "i must be smaller than 10");
    }

    function revertFunction(uint _i) public pure{
        if(_i > 10){
            revert("i must be smaller than 10");
        }
    }

    uint public num = 100;
    function AssertFunction() public view{
        assert(num == 100);
    }

}
