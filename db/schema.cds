namespace scp.cloud;

using {
  cuid,
  managed,
  //Country,
  sap.common
} from '@sap/cds/common';

entity Requests : cuid, managed {
  RequestID: String(10) @title: 'Request ID';
  RequestType: Association to RequestTypes @title: 'Request Type';
  RequestorEmail: String(40) @title: 'Requestor Email';
  FirstName: String(40) @title: 'First Name';
  LastName: String(40) @title: 'Last Name';
  GlobalRegion: Association to Regions @title: 'Global Region';
  BusinessUnit: String(20) @title: 'Business Unit';
  Function: String(20) @title: 'Function';
  Country: Association to CountryCodes @title: 'Country';
  ExpectedDueDate: Date @title: 'Expected Due Date';
  Priority: Association to Priorities @title: 'Priority';
  CreatedOnDate: Date @title: 'Created On Date';
  Comments: String(250) @title: 'Comments';
}

entity RequestTypes: common.CodeList {
  key code: String(12);
}

entity Regions: common.CodeList {
  key code: String(12);
}

entity Priorities: common.CodeList {
  key code: String(2);
}

entity CountryCodes: common.CodeList {
  key code: String(4);
}