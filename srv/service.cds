using {ust.harika} from '../db/model';
service MyService {
    @odata.draft.enabled
    entity RequestHeaders as projection on harika.RequestHeaders;
    entity RequestItems as projection on harika.RequestItems;
    entity Plants as projection on harika.Plants;
    entity Materials as projection on harika.Materials;
    // action local() returns String;
}
