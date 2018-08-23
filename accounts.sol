pragma solidity ^0.4.16;

contract accounts {

    uint uID;

    struct User {
        uint acc_Id;
        bool set;
    }

    mapping(address => User) public users;
    address[] public userAccounts;

    function _newUser(uint uID) public {
        address _address = msg.sender;
        var user = users[_address];

        user.acc_Id = uID++;

    }
}
