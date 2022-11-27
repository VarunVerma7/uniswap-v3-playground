// SPDX-License-Identifier: UNLICENSED
pragma solidity =0.7.6;

import "forge-std/Test.sol";
import { IUniswapV3Pool } from "@uniswap/v3-core/contracts/interfaces/IUniswapV3Pool.sol";
import { IUniswapV3Factory } from "@uniswap/v3-core/contracts/interfaces/IUniswapV3Pool.sol";
import { TransferHelper } from "@uniswap/v3-core/contracts/libraries/TransferHelper.sol";
import { SwapRouter } from "@uniswap/v3-periphery/contracts/SwapRouter.sol";
contract CounterTest is Test {
    IUniswapV3Pool public pool;
    SwapRouter public swapRouter;
    address public weth = 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2;
    address public usdc = 0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48;

    function setUp() public {
        // counter = new IUniswapV3Pool();
        swapRouter = new swapRouter(0xe592427a0aece92de3edee1f18e0157c05861564);
    }

    function getWeth() public {
        weth = 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2;
        IUniswapV3Pool pool = swapRouter.getPool(
        weth,
        usdc,
        5
        );
    }

}
