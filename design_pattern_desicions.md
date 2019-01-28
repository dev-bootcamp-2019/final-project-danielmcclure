# Design Pattern Decisions

## 1. Circuit Breaker

This project implements a circuit breaker that allows the original contract deployer to pause key functions within the contract in case of emergency. While this adds an element of centralisation, the aim is to upgrade this contract as the project matures to allow for a decentralised circuit break initiated by store owner votes. 

## 2. Fail Early & Fail Loud

Where possible this contract aims to fail as early as possible and provide useful error messages whilst doing so. This both aids in debugging and reduces the amount of unecessary computation that has to be processed potentially introducing further risk. 

## 3. Restricting Access

Another security feature of this smart contract is the fact that it restricts access to functions where possible through modifiers and other methods so that only those who are authorised to call a function can succeed. This is especially key for actions that impact the overall contract such as the circuit breaker but also for functions that impact individual stores on the marketplace. 
