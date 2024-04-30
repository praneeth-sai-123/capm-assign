using scp.cloud as my from '../db/schema.cds';
using {salesorder as sales} from './external/salesorder';


service ScpCloudService {
	@readonly entity Requests as projection on my.Requests;
	@readonly entity RequestTypes as projection on my.RequestTypes;
	@readonly entity Regions as projection on my.Regions;
	@readonly entity Priorities as projection on my.Priorities;
	@readonly entity CountryCodes as projection on my.CountryCodes;
	@readonly entity salesorder as projection on sales.CustomerOrderItemPartyCollection;
}