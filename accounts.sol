pragma solidity ^0.4.16;

contract accounts {
    
    address[] public userAccounts;
    
    struct User {
        uint acc_Id;
        //address _address;
    }
    
    mapping(address => User) public users;
    mapping(address => uint256) balances;

    function deposit() public payable { 
        balances[msg.sender]+=msg.value;
        userAccounts.push(msg.sender);
        var user = users[msg.sender];
        user.acc_Id = userAccounts.length;
        
    }
    
    function getContractBalance() public view returns (uint){
        return address(this).balance;
    }
   
}
