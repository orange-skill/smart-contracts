# Orange Smart Contracts

## Requirements

 - Truffle (`v5.4.13`)
    - `sudo npm install -g truffle`
 - Ganache (local blockchain)
    - `sudo npm install -g ganache-cli`

## Development

### Start besu

Refer: https://consensys.net/quorum/products/guides/getting-started-with-consensys-quorum/

### Deploy contracts

Deploy contracts to it:
```
truffle migrate --network besu
```

### Test in console

Start console:
```
truffle console --network besu
```

Initialize helpers:
```js
const orange = await Orange.deployed();
const accounts = await web3.eth.getAccounts();
```

### Run tests

```
truffle test
```