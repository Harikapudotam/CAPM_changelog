sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ust/clogproject1/test/integration/FirstJourney',
		'ust/clogproject1/test/integration/pages/RequestHeadersList',
		'ust/clogproject1/test/integration/pages/RequestHeadersObjectPage',
		'ust/clogproject1/test/integration/pages/RequestItemsObjectPage'
    ],
    function(JourneyRunner, opaJourney, RequestHeadersList, RequestHeadersObjectPage, RequestItemsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ust/clogproject1') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheRequestHeadersList: RequestHeadersList,
					onTheRequestHeadersObjectPage: RequestHeadersObjectPage,
					onTheRequestItemsObjectPage: RequestItemsObjectPage
                }
            },
            opaJourney.run
        );
    }
);