pragma solidity >= 0.7.0 < 0.9.0;

//enum is for making choices 
contract enumsLearn{
    enum frenchFriesSize {LARGE, MEDIUM, SMALL}
    frenchFriesSize choice;
    frenchFriesSize constant defaultChoice = frenchFriesSize.LARGE;

    function setSmall() public {
        choice = frenchFriesSize.SMALL;
    } 
    function getChoice() public view returns(frenchFriesSize){
      return choice;
    }
    function getDefaultChoice() public view returns(uint){
        return uint (defaultChoice);
    }
}