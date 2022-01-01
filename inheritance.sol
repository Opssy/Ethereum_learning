pragma solidity ^0.5.0;

interface Regulator {
    function checkValue(uint amount) external returns (bool);
    function loan() external returns (bool);
}

contract Bank is Regulator {
    uint private value;

    constructor(uint amount) public {
        value = amount;
    }

    function deposit(uint amount) public {
        value += amount;
    }

    function withdraw(uint amount) public {
        if (checkValue(amount)) {
            value -= amount;
        }
    }

    function balance() public view returns (uint) {
        return value;
    }

    function checkValue(uint amount) public returns (bool) {
        // Classic mistake in the tutorial value should be above the amount
        return value >= amount;
    }

    function loan() public returns (bool) {
        return value > 0;
    }
}
contract basic is Bank (10) {
  string private name;
  string private age;

  function setName(string newName) {
    name = newName;

  }
  function getName(string newAge){
    age = newAge;
  }
  function getAge() returns (uint){
    return age;
  }
}
