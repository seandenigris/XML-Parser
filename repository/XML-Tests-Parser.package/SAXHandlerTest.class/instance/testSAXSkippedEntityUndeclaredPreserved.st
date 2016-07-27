tests
testSAXSkippedEntityUndeclaredPreserved
	| xml parser |

	xml := '<root>&undeclared;</root>'.
	(parser := SAXHandlerProxy on: xml)
		isValidating: false;
		preservesUndeclaredEntityReferences: true;
		parseDocument.
	self assert:
		(parser wasSentSelectors:
			#(startDocument
				startElement:prefix:uri:localName:attributes:
				skippedEntity:
				characters:
				endElement:prefix:uri:localName:
				endDocument)).
	self
		assert: (parser argumentsSentWith: #skippedEntity:) = #('undeclared');
		assert: (parser argumentsSentWith: #characters:) = #('&undeclared;').