
contract Token{
    mapping(address=> unit) public balances;
    mapping(address=> mapping(address=>uint)) public allowance;
    uint public totalSupply=6000000000000;
    string name ="SWAP IT";
    string public symbol ="SWIT";
    uint public decimals = 18;
    
    event Transfer (address indexed from, address indexed to, uint value);
    event Approval(address indexed owner, address indexed spender, unit value);
    
    constructor(){
        balances[msg.sender]=totalSupply;
    }
    function balanceOf(address owner) public view returns (uint){
        return balances[owner];
    }
    function transfer(address to, uint value)public returns (bool){
        require(balanceOf(msg.sender)>=value, 'balance too low');
        balances[to] +=value;
        balances[msg.sender]-=value;
        emit Transfer(msg.sender, to, value);
        return true;
    }
    function tranferFrom(address from, address to, unit value) public returns (bool){
        require(balanceOf(from)>=value, 'balance too low');
        require(allowance[from][msg.sender] >=value, 'allowance too low');
        balance[to]+=value;
        balance[from]-=value;
        emit Transfer(from,to,value);
        return true;
    }
    function approve (address spender, uint value) public returns(bool){
        allowance[msg.spender][spender]=sender;
        emit Approval(msg.sender,spender,value);
        return true;
    }
}