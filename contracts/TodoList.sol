pragma solidity >=0.4.16 <0.9.0;

contract TodoList{
    
    uint public taskCount = 0;
    struct Task {
        uint id;
        string content;
        bool completed;
    }
    constructor() public {
        createTask("Check out github.com");
    }
    mapping(uint => Task) public tasks;
    function createTask(string memory _content) public {
        taskCount ++;
        tasks[taskCount] = Task(taskCount, _content, false);
    }
}