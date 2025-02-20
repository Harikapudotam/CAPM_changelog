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


