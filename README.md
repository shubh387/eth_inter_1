# Smart Contract Project
**Module: Functions and Errors - ETH + AVAX**

There are three Error Handling methods in Solidity whose implementation and explanation is shown below.
1. require
2. assert
3. revert

**CODE EXPLANATION:**

// SPDX-License-Identifier: MIT
This is a comment that indicates the license under which the code is released. In this case, it specifies the MIT License.

pragma solidity 0.8.18;
it indicates that the code should be compiled using Solidity version 0.8.18.

contract Account { ... }
This line declares a new contract named Account.

uint public balance = 0;
This line declares a public state variable named balance of type uint (unsigned integer) and initializes it to 0. The public keyword automatically generates a getter function to access the value of balance.

function withdraw(uint amount) public { ... }
This line declares a public function named withdraw that takes a parameter amount of type uint and does not return any value.

# require(balance > amount, "You do not have sufficient balance to withdraw!");
This line is a condition that checks if the balance is greater than the specified amount. If it's not, the function will revert the transaction and display the error message "You do not have sufficient balance to withdraw".

balance -= amount;
This line subtracts the amount from the balance.

function iszerobalance() public view returns (string memory) { ... }
This line declares a public view function named iszerobalance that does not take any parameters and returns a string value.

# assert(balance == 0);
This line is an assertion that checks if the balance is equal to 0. If it's not, it will throw an exception.

return "Sorry! You don't have sufficient balance.";
This line returns the string value "Sorry! You don't have sufficient balance." if the balance is equal to 0.

function deposit(uint amount) public { ... }
This line declares a public function named deposit that takes a parameter amount of type uint and does not return any value.

balance += amount;
This line adds the amount to the balance.

# if (balance > 5000) { revert("Your balance cannot be more than 5000"); }
This line checks if the balance is greater than 5000. If it is, the function will revert the transaction and display the error message "Your balance cannot be more than 5000".

## Author

Shubham kumar
