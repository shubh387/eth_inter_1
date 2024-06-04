// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

//write a smart contract that implements the require(), assert() and revert() statements.

// Creating a contract
contract Account
{
    
    uint public balance = 0;

    //Not able to withdraw more than the available balance
    function withdraw(uint amount) public   {
        require(balance >= amount, "You do not have sufficient balance to withdraw");
        balance -= amount;
    }


    //Checks if the balance is equals to zero
    function iszerobalance() public view returns (string memory){
        assert(balance == 0);
        return "Sorry! You don't have sufficient balance.";
    }

    //Money cannot be deposited if the total balance is greater than 5000
    function deposit(uint amount) public   {
        balance += amount;
        if (balance > 5000) {
            revert("Your balance cannot be more than 5000");
        }
    }

}
