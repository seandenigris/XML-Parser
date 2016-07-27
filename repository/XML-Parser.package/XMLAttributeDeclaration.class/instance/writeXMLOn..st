printing
writeXMLOn: aWriter
	aWriter attributeDeclaration
		element: self element;
		attribute: self attribute;
		type: self type;
		defaultDeclaration: self defaultDeclaration