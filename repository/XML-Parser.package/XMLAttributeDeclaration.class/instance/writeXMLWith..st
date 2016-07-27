printing
writeXMLWith: aWriter
	aWriter attributeDeclaration
		elementName: self elementName;
		attributeName: self attributeName;
		type: self type;
		defaultDeclaration: self defaultDeclaration