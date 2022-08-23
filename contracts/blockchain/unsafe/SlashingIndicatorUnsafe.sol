// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.0;

import "../SlashingIndicator.sol";

contract SlashingIndicatorUnsafe is SlashingIndicator {

    constructor(ConstructorArguments memory constructorArgs) SlashingIndicator(constructorArgs) {
    }

    modifier onlyFromCoinbase() override {
        _;
    }

    modifier onlyFromGovernance() override {
        _;
    }

    modifier onlyBlock(uint64 /*blockNumber*/) override {
        _;
    }
}