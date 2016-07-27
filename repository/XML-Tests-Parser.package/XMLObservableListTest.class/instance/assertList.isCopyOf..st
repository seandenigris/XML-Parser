assertions
assertList: aList isCopyOf: aSecondList
	super assertList: aList isCopyOf: aSecondList.
	self denyList: aList sharesObserverWith: aSecondList.