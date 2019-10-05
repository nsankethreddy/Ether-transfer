pragma solidity ^0.4.19;

contract TicTacToe {
    bool public mybool= false;
    address public myaddress;
    uint8 public myUint8;
    uint256 myUint256;
    string myString = "myString";
    bytes myBytes = "myString" ; 
    
    function TicTacToe() public{
        myaddress = msg.sender;
    }
    function fundmycontact()public payable{
    //this sends the ethers 
        
    }
    function withdraw()public{
        myaddress.transfer(this.balance );
        //this reseives the ethers 
    }
    
    function setmybool(bool _myboolArg)  public{
        if(msg.sender == myaddress){
        mybool = _myboolArg ;
        }
    }
        
    function getmybool() public view returns(bool){
        //this returns the boolean value
        return mybool;
    }
    
    
    
}
