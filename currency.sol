pragma solidity ^0.4.0;

contract eed{
    
    address public creator;
    mapping (address => uint) public balances;

    event delivered(address _from, address to, uint amount);
    
    function eed() 
    { 
        creator = msg.sender;
    }
    
    function create(address rec, uint amount)
    {
        if(creator!=msg.sender) throw;
        balances[rec]+= amount;
    }
    
    function tranny(address rec, uint amount)
    {
        if(balances[msg.sender]<amount) throw;
        balances[msg.sender]-=amount;
        balances[rec]+=amount;
        delivered(msg.sender, rec, amount);
        //if(event delivered) balances[msg.sender]+=3;
    }
}
