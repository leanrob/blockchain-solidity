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

`truffle compile && truffle migrate`
- Compile the code and migrate it to the virtual blockchain testRPC

`truffle console`
- To enter the truffle console, after this point it is javascript being typed directly into the console.

> var ss

> ScoreStore.deployed().then(function(deployed){ss=deployed;});

> ss.AddPersonScore("Rob",42);

Expected output:

```javascript
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

```javascript
{ [String: '42'] s: 1, e: 1, c: [ 42 ] }
```

## Game

This is used to show how one contract (Game) can use another contract (ScoreStore) to do work for it.

`cd game`

`truffle compile && truffle migrate`
- Compile the code and migrate it to the virtual blockchain testRPC

`truffle console`
- To enter the truffle console, after this point it is javascript being typed directly into the console.

> var mg

> Game.deployed().then(function(deployed){mg=deployed;});

> mg.ShowScore.call("Rob").then(function(returnValue){console.log(returnValue);});

expected output:

```javascript
{ [String: '42'] s: 1, e: 1, c: [ 42 ] }
```

This is the same as the last part because we are calling the same command but from antoher (Games) contract.

## Front End Technologies That Will Be Used

-> Web3.js Ethereum API

RPC calls will be made with this API
Works with the MetaMask application

-> Webpack

See http://truffleframework.com/boxes/webpack for installation (unboxing) steps.










