tests
testSAXStartElementEndElementNamespacesDisabled
	| parser startElementMessage endElementMessage |

	(parser := SAXHandlerProxy saxHandler: (SAXHandler on: self prefixedXMLSource))
		usesNamespaces: false;
		parseDocument.
	startElementMessage :=
		(parser sentHandlerMessages detect: [:each |
			each selector == #startElement:prefix:uri:localName:attributes:]).
	self assert:
		startElementMessage arguments asArray =
			((Array with: 'prefix:test' with: 'prefix' with: '' with: 'test')
				copyWith:
					(Dictionary
						with: 'xmlns:prefix' -> 'prefixNS'
						with: 'xmlns' -> 'defaultNS'
						with: 'name' -> 'value')).

	endElementMessage := 
		(parser sentHandlerMessages detect: [:each |
			each selector == #endElement:prefix:uri:localName:]).
	self assert:
		endElementMessage arguments asArray =
			(Array with: 'prefix:test' with: 'prefix' with: '' with: 'test').