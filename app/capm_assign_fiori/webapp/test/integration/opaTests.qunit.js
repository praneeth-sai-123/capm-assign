sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/deloitte/capm/capmassignfiori/test/integration/FirstJourney',
		'com/deloitte/capm/capmassignfiori/test/integration/pages/RequestsList',
		'com/deloitte/capm/capmassignfiori/test/integration/pages/RequestsObjectPage'
    ],
    function(JourneyRunner, opaJourney, RequestsList, RequestsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/deloitte/capm/capmassignfiori') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheRequestsList: RequestsList,
					onTheRequestsObjectPage: RequestsObjectPage
                }
            },
            opaJourney.run
        );
    }
);