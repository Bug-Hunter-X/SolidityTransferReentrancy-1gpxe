```solidity
function transfer(address to, uint amount) public {
  require(balanceOf[msg.sender] >= amount, "Insufficient balance");
  balanceOf[msg.sender] -= amount;
  // emit Transfer event *before* interacting with external contract
  emit Transfer(msg.sender, to, amount);
  (bool success, ) = to.call{value: amount}(new bytes(0));
  require(success, "Transfer failed.");
}
```