component accessors=true output=false {

	property userService;

	public any function init( fw ) {
		variables.fw = fw;
		return this;
	}
	
	public void function default( rc ) {
		rc.users = variables.userService.listUsers();
		dump(rc.users);
	}
	
}
