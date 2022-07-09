pragma solidity >= 0.7.0 < 0.9.0;


contract loopContract {
// a list of number ranging from 1 to 10
uint [] public numbersList = [1,2,3,4,5,6,7,8,9,10];

//Ex: if we have 4, how many numbers in our list can be a multiple of 4;
// A loop that acts as a multiple checker in our numberList


function checkMultipleOfFour(uint _number) public view returns (uint) {
    uint count = 0;
    //3 part statment of a for loop
    //1. initialize start loop
    //2. determine the lenght of loop
    //3. to direct the index after each turn
    for (uint i=1;  i < numbersList.length; i++) {
        //logic for the loop in here
        if(checkMultiples(numbersList[i], _number)) {
            count ++;
        }
    }
    return count;
  }

   //create function that can check if two numbers are divisible by each other - or are they multpiples of each other 
   //then return true or false 
   // using modulo operator
    function checkMultiples( uint _num, uint _nums) public view returns (bool) {
     if( _num % _nums == 0) {
         return true;
     } else {
         return false;
     }
    }
}