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
        swapRouter = SwapRouter(payable(0xE592427A0AEce92De3Edee1F18E0157C05861564));
    }

    function testGetWeth() public {
      ISwapRouter.ExactOutputSingleParams memory params =
            ISwapRouter.ExactOutputSingleParams({
                tokenIn: usdc,
                tokenOut: weth,
                fee: 1,
                recipient: msg.sender,
                deadline: block.timestamp,
                amountOut: 1,
                amountInMaximum: 1,
                sqrtPriceLimitX96: 0
            });

        // Executes the swap returning the amountIn needed to spend to receive the desired amountOut.
        uint amountIn = swapRouter.exactOutputSingle(params);

    }

}
