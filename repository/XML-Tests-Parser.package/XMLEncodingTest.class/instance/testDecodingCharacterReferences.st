tests
testDecodingCharacterReferences
	| document |

	document :=
		XMLDOMParser parse:
			(self sourceXMLWithContent:
				(String streamContents: [:stream |
					self sourceContent do: [:each |
						stream
							nextPutAll: '&#';
							nextPutAll: each asciiValue asString;
							nextPut: $;]])).
	self assert: document root contentString = self sourceContent.

	document :=
		XMLDOMParser parse:
			(self sourceXMLWithContent:
				(String streamContents: [:stream |
					self sourceContent do: [:each |
						stream
							nextPutAll: '&#x';
							nextPutAll: each asciiValue printStringHex asLowercase;
							nextPut: $;]])).
	self assert: document root contentString = self sourceContent.

	document :=
		XMLDOMParser parse:
			(self sourceXMLWithContent:
				(String streamContents: [:stream |
					self sourceContent do: [:each |
						stream
							nextPutAll: '&#x';
							nextPutAll: each asciiValue printStringHex asUppercase;
							nextPut: $;]])).
	self assert: document root contentString = self sourceContent.

	#('&#0;' '&#-1;' '&#9:;' '&#xFFG;') do: [:each |
		self
			should: [XMLDOMParser parse: (self sourceXMLWithContent: each)]
			raise: XMLWellFormednessException].