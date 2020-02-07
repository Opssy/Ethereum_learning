pragma solidity ^0.5.0;

contract SendingEther{
  //1.To track token balance we use mapping
  mapping(address => uint256) public balances;
  //3.Now I'll declare a wallet where the ether funds will be sent whenever an account buys tokens:
  address payable wallet;

  //how to set a wallet
  constructor(address payable _wallet) public {
    wallet = _wallet;
  }
  //Now I'll show you how to create a default or "fallback" function inside Solidity.
  //This is a function that will get called anytime an account sends Ether to a smart contract
  function() external payable {
    buyToken();
  }
 //2.how to write a function that accept ether
 // 2.1.This will allow an account to send ether to pay for tokens with Ether
 // 2.2 I added public to it inorder forpeople to access it
 //2.3 in order for it to accept ether i need to add payable.
 function buyToken() public payable{
   //3.buy token;
   balances[msg.sender] +=1;
   //3.1.send ether to the wallet
   wallet.transfer(msg.value);
 }

}

//EVENT
contract MyContract {
    mapping(address => uint256) public balances
//Events are a way of dealing with the asynchronous nature of the blockchain.
//We can declare events inside smart contracts that can be subscribed to by external consumers
    event Purchase(
        address indexed _buyer,
        uint256 _amount
    );

    constructor(address payable _wallet) public {
        wallet = _wallet;
    }

    function() external payable {
        buyToken();
    }

    function buyToken() public payable {
        balances[msg.sender] += 1;
        wallet.transfer(msg.value);
        emit Purchase(msg.sender, 1);
    }
}
