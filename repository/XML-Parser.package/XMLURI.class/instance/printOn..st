printing
printOn: aStream
	self
		printSchemeOn: aStream;
		printHostOn: aStream;
		printPathSegmentsOn: aStream;
		printQueryStringOn: aStream;
		printFragmentOn: aStream
		