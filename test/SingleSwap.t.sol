// SPDX-License-Identifier: UNLICENSED
pragma solidity =0.8.6;
pragma experimental ABIEncoderV2;

import "forge-std/Test.sol";
import "src/Counter.sol";
contract CounterTest is Test {
    // IUniswapV3Pool public pool;
    SwapRouter public swapRouter;
    address public weth = 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2;
    address public usdc = 0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48;

    function setUp() public {
        vm.rollFork(16059272);
        // counter = new IUniswapV3Pool();
        swapRouter = SwapRouter(0xe592427a0aece92de3edee1f18e0157c05861564);
    }

    function getWeth() public {
        weth = 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2;
        swapRouter.getPool(
        weth,
        usdc,
        5
        );
    }

}
