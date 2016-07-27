printing
printOn: aStream
	self
		printSchemeOn: aStream;
		printHostOn: aStream;
		printPortOn: aStream;
		printPathSegmentsOn: aStream unescaped: false;
		printQueryStringOn: aStream;
		printFragmentOn: aStream
		