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
        
    }
    function withdraw()public{
        myaddress.transfer(this.balance );
    }
    
    function setmybool(bool _myboolArg)  public{
        if(msg.sender == myaddress){
        mybool = _myboolArg ;
        }
    }
        
    function getmybool() public view returns(bool){
        return mybool;
    }
    
    
    
}
