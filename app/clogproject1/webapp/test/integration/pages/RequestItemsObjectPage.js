sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'ust.clogproject1',
            componentId: 'RequestItemsObjectPage',
            contextPath: '/RequestHeaders/items'
        },
        CustomPageDefinitions
    );
});