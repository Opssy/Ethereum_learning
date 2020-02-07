pragma solidity ^0.5.0;

contract MyContract{
  //storage program

  string value;
//step1: declare a function get() to read from the storage
  function get(){
    return value;
  }
  //step2: we will set the visibility of thr function to public
  function get() public view{
    return value;
  }
    //step3: specify the return value
    function get{} public view returns (string){
      return value;
    }

    //how to set a value from outside smart contract
    function set(string _value) pulic {

    }
      //I created a function that accept a _value
      function set (string _value) public {
        value =_value; // i noticed  that _value, prepended by an underscore is simply a local variable
      }

      //creating a defualt value
      constructor() public {
        value = "myValue";
      }
}
