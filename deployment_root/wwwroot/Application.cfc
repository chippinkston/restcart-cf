component extends="framework.one" {

	this.ormEnabled = true;
	this.ormSettings.cfclocation = expandPath("/model");
	this.ormSettings.automanageSession = false;
	this.ormSettings.flushatrequestend = false;

	variables.framework = {
		// the URL variable to reload the controller/service cache:
		reload = 'reload',
		reloadApplicationOnEveryRequest = true,
		generateSES = true,
		SESOmitIndex = true,
        diEngine = 'di1',
		diLocations : [ "model" ],
        diConfig = { singletonPattern : "(Service|DAO)$" },
        // routes (for fancier SES URLs) - see the documentation for details:
        routes = [ ],
        routesCaseSensitive = false
	};


	function setupRequest() {
		// use setupRequest to do initialization per request
		request.context.startTime = getTickCount();
	}

}
