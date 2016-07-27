tests
testSAXSkippedEntityHandler
	| xml parser |

	xml := '<root>&undeclared;</root>'.
	(parser := SAXHandlerProxy saxHandler: (SAXHandler on: xml))
		isValidating: false;
		parseDocument.
	self assert:
		#(startDocument
			startElement:prefix:uri:localName:attributes:
			skippedEntity:
			endElement:prefix:uri:localName:
			endDocument) = parser sentHandlerSelectors.
	self assert:
		(parser sentHandlerMessages detect: [:each | each selector == #skippedEntity:])
			arguments first = 'undeclared'.