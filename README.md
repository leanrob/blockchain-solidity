# blockchain-solidity
A project to learn about blockchain development using Solidity.


## Hello World

In a terminal window run testRPC...

`testrpc`

Open a second window or tab and run..

`cd hello-world`

`truffle compile && truffle migrate`
- Compile the code and migrate it to the virtual blockchain testRPC

`truffle console`
- To enter the truffle console, after this point it is javascript being typed directly into the console.

> var hw

> HelloWorld.deployed().then(function(deployed){hw=deployed;});

> hw.SayHello.call()

Expected output: "Hello World"
