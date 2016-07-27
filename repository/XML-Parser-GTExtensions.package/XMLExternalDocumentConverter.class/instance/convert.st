converting
convert
	^ self
		detectCurrentEncoding;
		nextXMLDeclaration;
		skipToEnd;
		close;
		contents