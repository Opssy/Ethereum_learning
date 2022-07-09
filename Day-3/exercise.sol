pragma solidity >= 0.7.0 < 0.9.0;


contract exercise {
    //  uint a = 300;
    // uint b = 12;
    // uint f = 47;
    // function finalize() public view returns( uint d){
    //      d = 23;
    //     if (a > b && b < f ){
    //     d *= d;
    //      return d - b ;
    //     } else{
    //         return d;  
    //     }
    // }
    function modulo(uint a, uint b) public view returns(uint){
        uint c = a % b;
        
        if( b <= a) {
            return c;
        } else {
            return 0;
        }
    }
}