component accessors=true displayname="user controller" {

	property userService;

	public any function init( fw ) {
		variables.fw = fw;
		return this;
	}

	public void function list(struct rc = {}) {
		dump(userService.listUsers());
	}

	public void function view(struct rc = {}) {
		
	}

	public void function edit(struct rc = {}) {
		
	}

	public void function delete(struct rc = {}) {
		
	}
}
