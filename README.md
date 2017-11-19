# blockchain-solidity
A project to learn about blockchain development using Solidity.

## Run testrpc

In a terminal window run testRPC...

`testrpc`


## Hello World

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

## ScoreStore

This is to display the use of storage on the blockchain in testrpc.

`cd store-score`

truffle compile && truffle migrate`
- Compile the code and migrate it to the virtual blockchain testRPC

`truffle console`
- To enter the truffle console, after this point it is javascript being typed directly into the console.

> var ss

> ScoreStore.deployed().then(function(deployed){ss=deployed;});

> ss.AddPersonScore("Rob",42);

Expected output:

```
{ tx: '0x36c7b8307dcc84f53e86347b4b2c48914aeb13ca6fdf17a4a9a75bc5ec87c4e0',
  receipt:
   { transactionHash: '0x36c7b8307dcc84f53e86347b4b2c48914aeb13ca6fdf17a4a9a75bc5ec87c4e0',
     transactionIndex: 0,
     blockHash: '0xa4247492c2274ccc412f7cd0bc845e6d95565811e0272201ee38bb2341bc0aa2',
     blockNumber: 9,
     gasUsed: 43374,
     cumulativeGasUsed: 43374,
     contractAddress: null,
     logs: [],
     status: 1 },
  logs: [] }
  ```

> ss.GetScore.call("Rob");

Expected output:

```{ [String: '42'] s: 1, e: 1, c: [ 42 ] }```

### Deploying to actual blockchain





