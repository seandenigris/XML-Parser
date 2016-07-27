printing
printOn: aStream
	self
		printSchemeOn: aStream;
		printHostOn: aStream;
		printPathSegmentsOn: aStream unescaped: false;
		printQueryStringOn: aStream;
		printFragmentOn: aStream
		