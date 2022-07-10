pragma solidity >= 0.7.0 < 0.9.0;

contract Base {
    uint data;

    constructor(uint _data) public{
        data = _data;
    }
    // function getData() public view returns(uint){
    //     return data;
    // }
}

contract Derived is Base {
    constructor( uint d)Base(d) public {}
      function geData () public view returns(uint){
            return data;
        }
}