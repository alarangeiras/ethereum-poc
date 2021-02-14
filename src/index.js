const Web3 = require('web3');

let web3 = new Web3(Web3.givenProvider || "ws://localhost:8545");

web3.eth.sendTransaction({from: '0x123...', data: '0x432...'})
.then(function(receipt){
    console.log(receipt);
})
.catch(error => console.error(error));