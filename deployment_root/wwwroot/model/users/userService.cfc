component accessors=true output=false{
    property user;
    property userDAO;

    public user function createUser(){
        var user = variables.userDAO.createUser();
        return user;
    }

    public array function listUsers(numeric offset=0, numeric limit=10){
        var result = [];
        var userList = variables.userDAO.listUsers(arguments.offset, arguments.limit);
        if(isQuery(userList)){
            userList = queryToArray(userList);
        }
        return userList;
    }

    private array function queryToArray(query){
        var result = [];
        for(row in query){
            arrayappend(result, row);
        }
        return result;
    }
}
