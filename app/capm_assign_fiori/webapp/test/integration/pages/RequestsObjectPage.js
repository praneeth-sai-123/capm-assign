sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'com.deloitte.capm.capmassignfiori',
            componentId: 'RequestsObjectPage',
            contextPath: '/Requests'
        },
        CustomPageDefinitions
    );
});