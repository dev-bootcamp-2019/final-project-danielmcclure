# Avoiding Common Attacks

1. **Reentrancy:** Reduce store balance before sending withdrawal.
2. **Integer Overflow and Underfloaw:** Check balances for potential overflow before balance affecting actions are taken. 
3. **DoS with Block Gas Limit:** State maintains count of stores and products and selectively interacts to avoid looping over arrays of an unknown length.  