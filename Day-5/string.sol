pragma solidity >= 0.7.0 < 0.9.0;

contract learnString {
    string greetings = 'Hello';

    function sayHello () public view returns(string memory){
     return greetings;
    }
     //to make greetings returns another  aside hello
    function changeGreetings(string memory _change) public{
        greetings = _change;
    }

    //how to get length of a character

    function getChar() public view returns(uint) {
        bytes memory stringToBytes = bytes(greetings);
        return stringToBytes.length;
    }
}