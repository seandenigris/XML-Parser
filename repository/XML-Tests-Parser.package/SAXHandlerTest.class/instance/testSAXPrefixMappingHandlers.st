tests
testSAXPrefixMappingHandlers
	| parser |

	(parser := SAXHandlerProxy saxHandler: (SAXHandler on: self prefixedXMLSource)) parseDocument.
	self assert:
		#(startDocument
			startPrefixMapping:uri: startPrefixMapping:uri:
			startElement:prefix:uri:localName:attributes:
			characters:
			endElement:prefix:uri:localName:
			endPrefixMapping: endPrefixMapping:
			endDocument) = parser sentHandlerSelectors.
	self assert:
		((parser sentHandlerMessages select: [:each |
			#(startPrefixMapping:uri: endPrefixMapping:) includes: each selector])
				collect: [:each | each arguments asArray]) asArray =
					#(#('prefix' 'prefixNS') #('' 'defaultNS') #('prefix') #('')).