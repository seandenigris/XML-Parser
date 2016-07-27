converting
convert
	^ self
		detectCurrentEncoding;
		nextXMLDeclaration;
		upToEnd