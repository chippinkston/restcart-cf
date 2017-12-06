component {

    public user function createUser(){
        var user = entityNew('user');
        return user;
    }

    public array function listUsers(numeric offset=0, numeric limit=10){
        var result = [];
        var users = queryNew('id,username,password,isAdmin');
            queryAddRow(users);
            querySetCell(users, "id", 1);
            querySetCell(users, "username", "Alice");
            querySetCell(users, "password", "alice");
            querySetCell(users, "isAdmin", false);
        result = this.queryToArray(users);
        return result;
    }

    private array function queryToArray(query){
        var result = [];
        for(row in query){
            arrayappend(result, row);
        }
        return result;
    }

}
