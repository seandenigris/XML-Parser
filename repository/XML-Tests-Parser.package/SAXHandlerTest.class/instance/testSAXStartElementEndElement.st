tests
testSAXStartElementEndElement
	| parser startElementMessage endElementMessage |

	(parser := SAXHandlerProxy saxHandler: (SAXHandler on: self prefixedXMLSource))
		parseDocument.
	startElementMessage :=
		(parser sentHandlerMessages detect: [:each |
			each selector == #startElement:prefix:uri:localName:attributes:]).
	self assert:
		startElementMessage arguments asArray =
			((Array with: 'prefix:test' with: 'prefix' with: 'prefixNS' with: 'test')
				copyWith: (Dictionary with: 'name' -> 'value')).

	endElementMessage := 
		(parser sentHandlerMessages detect: [:each |
			each selector == #endElement:prefix:uri:localName:]).
	self assert:
		endElementMessage arguments asArray =
			(Array with: 'prefix:test' with: 'prefix' with: 'prefixNS' with: 'test').