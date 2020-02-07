pragma solidity ^0.5.1;

contract FunctionVisibility {
  uint256 peopleCount = 0;

   mapping(uint => Person) public people;

   //2. Restricting accessing
   address owner;
   //3.then u create acccesss mmodifier
     modifier onlyOwner() {
       require(msg.sender === owner);
       _;
     }
   struct Person {
       uint _id;
       string _firstName;
       string _lastName;
   }
   //4. Now we can set the owner inside the smart contract as the account that deploys the smart contract like this:
   constructor() public {
    owner = msg.sender;
   }
  //What if we wanted to create functions that are only used inside the smart contract? We can do this with the internal visibility
  function incrementCount() internal {
    peopleCount +=1;
  }
  function addPerson(string memory _firstName, string memory _lastName) public {
    incrementCount()
    people[peopleCount] = Person(peopleCount, _firstName, _lastName);
}

//1. Restricting other ppeople on the network from accessing a particular network
function addPerson(string memory _firstName, string memory _lastName) public onlyOwner {
  incrementCount()
  people[peopleCount] = Person(peopleCount, _firstName, _lastName);
}
//How to work with time
uint256 openingTime = 1544668513;
//2.then u create acccesss mmodifier
  modifier onlyWillOpen() {
    require(block.timestamp === openingTime);
    _;
  }
//1 . We'll create a new modifier called onlyWhileOpen that will check that the current time on the blockchain is past a time that we specify.
function addPerson(string memory _firstName, string memory _lastName) public onlyWillOpen {
  incrementCount()
  people[peopleCount] = Person(peopleCount, _firstName, _lastName);
  }
// full code for working qwith timestamp
contract MyContract {
    uint256 public peopleCount = 0;
    mapping(uint => Person) public people;

    uint256 startTime;

    modifier onlyWhileOpen() {
        require(block.timestamp >= startTime);
        _;
    }

    struct Person {
        uint _id;
        string _firstName;
        string _lastName;
    }

    constructor() public {
        startTime = 1544668513; // Update this value
    }

    function addPerson(
        string memory _firstName,
        string memory _lastName
    )
        public
        onlyWhileOpen
    {
        people[peopleCount] = Person(peopleCount, _firstName, _lastName);
    }

    function incrementCount() internal {
        peopleCount += 1;
    }
}
