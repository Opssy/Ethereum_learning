pragma solidity >= 0.7.0 < 0.9.0;

contract myLoopingPractise {
    uint [] public list = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20];
    uint [] public numbersList = [1, 4, 34, 56];

    function numbersLists( uint userNumber) public view returns(bool){
             bool numberExist = false;
       for(uint i = 0; i < numbersList.length; i++){
         if( numbersList[i] == userNumber){
            numberExist = true;
         } 
         return numberExist;
       }
    }

    function numberlist() public view returns(uint){
        uint count = 0;
        for(uint i = 0; i < list.length; i++) {
            if(list[i] % 2 == 0) {
                count++;
            }
        }
        return count;
    }
} 
 

 //number%2 == 0

