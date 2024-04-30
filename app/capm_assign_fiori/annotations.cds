using ScpCloudService as service from '../../srv/scp-cloud-service';
annotate service.Requests with @(
    UI: {
    HeaderInfo: {
      TypeName: 'Request',
      TypeNamePlural: 'Requests'
    }
    },
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : RequestID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'RequestType_code',
                Value : RequestType_code,
            },
            {
                $Type : 'UI.DataField',
                Value : RequestorEmail,
            },
            {
                $Type : 'UI.DataField',
                Value : FirstName,
            },
            {
                $Type : 'UI.DataField',
                Value : LastName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'GlobalRegion_code',
                Value : GlobalRegion_code,
            },
            {
                $Type : 'UI.DataField',
                Value : BusinessUnit,
            },
            {
                $Type : 'UI.DataField',
                Value : Function,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Country_code',
                Value : Country_code,
            },
            {
                $Type : 'UI.DataField',
                Value : ExpectedDueDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Priority_code',
                Value : Priority_code,
            },
            {
                $Type : 'UI.DataField',
                Value : CreatedOnDate,
            },
            {
                $Type : 'UI.DataField',
                Value : Comments,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : RequestID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'RequestType_code',
            Value : RequestType_code,
        },
        {
            $Type : 'UI.DataField',
            Value : RequestorEmail,
        },
        {
            $Type : 'UI.DataField',
            Value : FirstName,
        },
        {
            $Type : 'UI.DataField',
            Value : LastName,
        },
    ]
);

