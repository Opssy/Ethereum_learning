pragma solidity ^0.5.1;
contract DataType {
  function get() public view returns(string memory) { // whenever we passing a value we must include a string memory
    return value;
  }
  function set(string memory _value) public {
      value = _value;
  }

  //ENUM
  enum State {waiting, Ready, Active}
  State Public state;
  constructor() public{
    state = State.Active
  }
  function activate() public{
    state = State.Active
  }
  //write a function to check if it is Active
  function isActive() public view return(bool){
    return state == State.Active;
  }

  //STRUCTS
  //is a way of defining data structurre in solidityyt
  struct person{
    string _firstname;
    string _lastname;
  }

  //ARRAYS
  Person public people;

  uint256 public peopleCount;
  struct person{
    string _firstname;
    string _lastname;
  }
  //how to add person to array
  function addPerson(striong memory _firstName, string _lastName) public {
    people.push(Person(_firstName,_lastName));
    peopleCount +=1;
  }


  //MAPPING
  //mapping allows us to store key-value pairs
  uint256 peopleCount = 0;

   mapping(uint => Person) public people;

   struct Person {
       uint _id;
       string _firstName;
       string _lastName;
   }

   function addPerson(string memory _firstName, string memory _lastName) public {
       peopleCount += 1;
       people[peopleCount] = Person(peopleCount, _firstName, _lastName);
   }
}
