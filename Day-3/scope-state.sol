pragma solidity >= 0.7.0 < 0.9.0;


contract C  {
    uint public data  = 10; // scope 

  // this is going to affect the scope by return 17
  function z() public returns(uint){
      data = 17;   //local
     return data;
    }
    function w() public view returns(uint){
        return data; //local
    }

     //but this is not going to affect the scope
    function x() public pure returns(uint){
      uint newData = data + 15; 
     return newData;
    }
    function y() public view returns(uint){
        return data;
    }

}