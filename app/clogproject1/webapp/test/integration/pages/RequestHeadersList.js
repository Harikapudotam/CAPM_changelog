sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'ust.clogproject1',
            componentId: 'RequestHeadersList',
            contextPath: '/RequestHeaders'
        },
        CustomPageDefinitions
    );
});