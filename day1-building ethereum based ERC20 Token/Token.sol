pragma solidity ^0.5.3;
contract NgnToken {
  string public name = "Ngn Token";
  string public symbol = "NGN";
  string public standard = "Ngn Token v0.1";
  unint256 public totalSupply;

  event Transfer(
    address indexed _from;
    address indexed _to;
    uint256 _value
    );

    event Approval(
      address indexed _owner,
      address indexed _spender,
      uint256 _value,
      );
}
