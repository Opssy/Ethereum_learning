pragma solidity >= 0.7.0 < 0.9.0;


contract DecisionMaking {
    uint oranges = 4 ;

    function validateOranges() public view returns (bool){
       if(oranges == 5) {
         return true;  
       } else{
           return false;
       }
    }
}