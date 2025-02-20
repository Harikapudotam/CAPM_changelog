// using MyService as service from '../../srv/service';
// annotate service.RequestHeaders with @(
//     UI.FieldGroup #GeneratedGroup : {
//         $Type : 'UI.FieldGroupType',
//         Data : [
//             {
//                 $Type : 'UI.DataField',
//                 Label : 'reqno',
//                 Value : reqno,
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Label : 'reqdesc',
//                 Value : reqdesc,
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Label : 'status',
//                 Value : status,
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Label : 'prtype',
//                 Value : prtype,
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Label : 'prnumber',
//                 Value : prnumber,
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Label : 'Currency_code',
//                 Value : Currency_code,
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Label : 'totalprice',
//                 Value : totalprice,
//             },
//         ],
//     },
//     UI.Facets : [
//         {
//             $Type : 'UI.ReferenceFacet',
//             ID : 'GeneratedFacet1',
//             Label : 'General Information',
//             Target : '@UI.FieldGroup#GeneratedGroup',
//         },
//     ],
//     UI.LineItem : [
//         {
//             $Type : 'UI.DataField',
//             Label : 'reqno',
//             Value : reqno,
//         },
//         {
//             $Type : 'UI.DataField',
//             Label : 'reqdesc',
//             Value : reqdesc,
//         },
//         {
//             $Type : 'UI.DataField',
//             Label : 'status',
//             Value : status,
//         },
//         {
//             $Type : 'UI.DataField',
//             Label : 'prtype',
//             Value : prtype,
//         },
//         {
//             $Type : 'UI.DataField',
//             Label : 'prnumber',
//             Value : prnumber,
//         },
//     ],
// );


using MyService as service from '../../srv/service';
annotate service.RequestHeaders @(
    UI.SelectionFields: [
        reqdesc,
        reqno,
        status
    ],

    UI.LineItem       : [
        {
            $Type: 'UI.DataField',
            Label: 'Request Number',
            Value: reqno,
        },

        {
            $Type: 'UI.DataField',
            Label: 'Request Description',
            Value: reqdesc,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Total Price',
            Value: totalprice,

        },
        {
            $Type: 'UI.DataField',
            Label: 'Currency',
            Value: Currency_code,

        },

        {
            $Type: 'UI.DataField',
            Label: 'Status',
            Value: status,
        },

        {
            $Type: 'UI.DataField',
            Value: createdBy,
        },
        {
            $Type: 'UI.DataField',
            Label: 'PR',
            Value: prnumber,
        },
    ],

    UI.HeaderInfo     : {
        TypeName      : 'Request1',
        TypeNamePlural: 'Request',
        Title         : {Value: reqdesc},
        Description   : {Value: reqno}
    },
    UI.Facets         : [
        {
            $Type : 'UI.CollectionFacet',
            Label : 'General Information',
            Facets: [{
                $Type : 'UI.ReferenceFacet',
                Label : 'Item Details',
                Target: '@UI.Identification'
            }
            ],
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Items',
            Target: 'items/@UI.LineItem'
        },
    ],
    UI.Identification : [
        {
            $Type: 'UI.DataField',
            Label: 'Request Number',
            Value: reqno,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Request Description',
            Value: reqdesc,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Total Price',
            Value: totalprice,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Currency',
            Value: Currency_code,

        },
        {
            $Type: 'UI.DataField',
            Label: 'createdBy',
            Value: createdBy,
        },
        {
            $Type: 'UI.DataField',
            Value: createdAt,
        },
        {
            $Type: 'UI.DataField',
            Value: modifiedBy,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Status',
            Value: status,
        },
        {
            $Type: 'UI.DataField',
            Label: 'PR',
            Value: prnumber,
        }
    ],
);
annotate service.RequestItems with @(
    UI.LineItem      : [
        {
            $Type: 'UI.DataField',
            Label: 'ID',
            Value: ID,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Item Number',
            Value: itemno,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Item Description',
            Value: itemdescr,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Quantity',
            Value: quantity,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Unit price',
            Value: unitprice,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Net price',
            Value: netprice,
        },
    ],

    UI.Facets        : [{
        $Type : 'UI.CollectionFacet',
        Label : 'General Information',
        Facets: [{
            $Type : 'UI.ReferenceFacet',
            Label : 'Itemms',
            Target: '@UI.Identification'
        },
        ],
    }, ],
    UI.Identification: [
        
        {
            $Type: 'UI.DataField',
            Label: 'Item Number',
            Value: itemno,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Description',
            Value: itemdescr,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Price',
            Value: unitprice,
        },
        {
            $Type: 'UI.DataField',
            Label: 'createdBy',
            Value: createdBy,
        },
        {
            $Type: 'UI.DataField',
            Value: createdAt,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Net price',
            Value: netprice,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Quantity',
            Value: quantity,
        }
    ],
);
annotate service.RequestHeaders {
    reqdesc @Common.ValueList: {
        CollectionPath: 'RequestHeaders',
        Label         : '',
        Parameters    : [{
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: reqdesc,
            ValueListProperty: 'reqdesc'
        },
        //{$Type: 'Common.ValueListParameterOut', LocalDataProperty: RequestDescr, ValueListProperty: 'RequestDescr'},
        ]
    }
}

// annotate service.RequestItems @(Common : {
//     SideEffects #ProductChanged  : {
//         SourceProperties : ['itemno'],
//         TargetProperties : ['unitprice', 'netprice']
//     }
// });
// annotate service.RequestItems @(Common : {
//     SideEffects #QuantityChanged : {
//         SourceProperties : ['quantity'],
//         TargetProperties : ['netprice']
//     }
// });
// annotate service.RequestHeaders @(Common : {
//     SideEffects #ItemChanged     : {
//         SourceEntities   : [items],
//         TargetProperties : ['totalprice']
//     }
// });

// annotate service.RequestHeaders with actions{  sendforapproval @Core.OperationAvailable: {  $edmJson: {$Gt: [{$Path: 'in/status'}, 'Waiting']}};
  
// };

// annotate service.RequestHeaders with actions{  sendforapproval @Core.OperationAvailable: disableUpdation;
// //   ta_lr_inlineIconAction  @Core.OperationAvailable: {    $edmJson: {$Gt: [{$Path: 'totalAmount'}, 1000]}};
// //   ta_lr_toolbarAction @Core.OperationAvailable: disableUpdation;
// };
// annotate service.RequestHeaders with @(UI.Identification : [ 
//   {
//     $Type : 'UI.DataFieldForAction', 
//     Label : 'Set to In Process', 
//     Action : 'MyService.EntityContainer/responsefrombpa', 
//     ![@UI.Hidden] : {$edmJson : {$Ne : [{$Path : 'status'}, 'approved']}} 
//   }, 
// ]);