pragma solidity >= 0.7.0 < 0.9.0;

//pop, push and length method
//how to remove element from array
contract learnArray {
  uint[] public myArray;
  uint[] public myArray2;
  uint[200] public fixedArray;

  //push - to add element to the end array
  function push(uint number) public {
    myArray.push(number);
  } 
  //pop - to remove the last element in an array
  function pop(uint number) public {
    myArray2.pop();
  }
  //length - to determne the length of a string 
  function getLength() public view returns(uint){
    return myArray.length;
  }

  function remove(uint i)public {
    //when you delete in your array the length remains the same
    delete myArray[i];
  }
}