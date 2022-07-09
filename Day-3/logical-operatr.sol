pragma solidity >= 0.7.0 < 0.9.0;

contract logic {
    uint a = 17;
    uint b = 32; 

    function multiply() public view returns(uint){
       uint result = 0;
       if( b > a && a != b){
           result = a*b;
       }
      return result/b;
    }
}