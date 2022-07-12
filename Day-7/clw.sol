pragma solidity >= 0.7.0 < 0.9.0;



contract shirts{
   enum shirtColor {RED, WHITE, BLUE}
   shirtColor choice;
   shirtColor constant defaultshirtColor = shirtColor.BLUE;

   function setWhite() public {
      choice=  shirtColor.WHITE;
   }
   function getChoice() public view returns(shirtColor ){
    return choice;
   }
}