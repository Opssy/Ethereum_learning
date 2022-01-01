pragma solidity ^0.4.0;
contract basic {
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
