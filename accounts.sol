pragma solidity ^0.4.16;

contract accounts {
    
    address[] public userAccounts;
    
    struct User {
        uint acc_Id;
        bool set;
  //      address _address;
    }
    
    mapping(address => User) public users;
    mapping(address => uint256) balances;

    function deposit() public payable { 
        balances[msg.sender]+=msg.value;
        var user = users[msg.sender];
        if (!user.set){
        userAccounts.push(msg.sender);
        user.acc_Id = userAccounts.length;
        user.set = true;
        }
        
    }
    
    function getAccountID() public view returns (uint){
        return (users[msg.sender].acc_Id);
    }
}


