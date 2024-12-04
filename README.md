# Reentrancy Vulnerability in Solidity

This repository demonstrates a common reentrancy vulnerability in Solidity smart contracts and its solution.

The `bug.sol` file contains a vulnerable `transfer` function.  A malicious contract could exploit this vulnerability to steal funds.

The `bugSolution.sol` file shows how to mitigate this vulnerability using the Checks-Effects-Interactions pattern.