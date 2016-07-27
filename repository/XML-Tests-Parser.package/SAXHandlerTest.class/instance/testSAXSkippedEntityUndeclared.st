tests
testSAXSkippedEntityUndeclared
	| xml parser |

	xml := '<root>&undeclared;</root>'.
	(parser := SAXHandlerProxy on: xml)
		isValidating: false;
		parseDocument.
	self assert:
		(parser wasSentSelectors: 
			#(startDocument
				startElement:prefix:uri:localName:attributes:
				skippedEntity:
				endElement:prefix:uri:localName:
				endDocument)).
	self assert: (parser argumentsSentWith: #skippedEntity:) first = 'undeclared'.