source XML
sampleUserXML
	^
	XMLWriter new
		enablePrettyPrinting;
		writeWith: [:writer |
			writer tag
				name: 'user:user';
				xmlnsAt: 'user' put: 'urn:user';
				with: [
					writer
						tag: 'user:username' with: 'jsmith';
						tag: 'user:real-name' with: 'John Smith';
						tag: 'user:date-registered' with: (DateAndTime now - 1 week) printString;
						tag: 'user:date-last-active' with: DateAndTime now printString;
						tag: 'table-name' with: 'users';
						tag: 'row-id' with: (Random new next * 100) asInteger printString;
						tag: 'serializationFormat' with: 'XML']];
		contents