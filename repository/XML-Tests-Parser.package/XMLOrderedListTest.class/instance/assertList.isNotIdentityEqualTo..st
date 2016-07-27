assertions
assertList: aList isNotIdentityEqualTo: aSecondList
	self
		deny: aList == aSecondList;
		deny: aSecondList == aList;
		deny: aList collection == aSecondList collection;
		deny: aSecondList collection == aList collection