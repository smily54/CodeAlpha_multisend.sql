## ✅ Task 2: Multi-Send Smart Contract

### 💡 Description

This smart contract allows a user to send Ether to multiple Ethereum addresses in a single transaction. The total Ether sent is automatically divided equally among all the provided addresses.

---

### ⚙️ Features

* Accepts multiple recipient addresses
* Receives Ether using a payable function
* Distributes Ether equally using a loop
* Ensures all transfers are successful

---

### 🧾 Smart Contract Code

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MultiSend {

    function sendEther(address[] memory recipients) public payable {

        require(recipients.length > 0, "No recipients");

        uint amount = msg.value / recipients.length;

        for(uint i = 0; i < recipients.length; i++) {
            payable(recipients[i]).transfer(amount);
        }
    }
}
```

---

### 🧪 How to Run

1. Open Remix IDE
2. Create a file named MultiSend.sol
3. Paste the code and compile
4. Deploy the contract (Value = 0 ETH)
5. Enter recipient addresses in array format
6. Set Value (e.g., 2 ETH)
7. Click sendEther to distribute Ether

---

### 📌 Example

Input:

```
["address1","address2"]
```

Value:

```
2 ETH
```

Output:
Each address receives 1 ETH

---

### 🎯 Outcome

The contract was successfully compiled, deployed, and tested in Remix IDE. Ether was distributed equally among multiple addresses without errors.
