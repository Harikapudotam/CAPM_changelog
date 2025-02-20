using MyService from './service';

annotate MyService.RequestHeaders with {
  reqno @changelog;
  reqdesc @changelog;
  status @changelog;
  prtype @changelog;
  prnumber @changelog;
  Currency @changelog;
  totalprice @changelog;
  items @changelog;
};
// annotate MyService.RequestItems with {
//   itemno @changelog;
//   netprice @changelog;
// };
//removes lazy loading
using from '@cap-js/change-tracking';

annotate sap.changelog.aspect @(UI.Facets: [{
          $Type               : 'UI.ReferenceFacet',
          ID                  : 'ChangeHistoryFacet',
          Label               : '{i18n>ChangeHistory}',
          Target              : 'changes/@UI.PresentationVariant',
          ![@UI.PartOfPreview]
}]);

