tests
testSAXPrefixMappingHandlers
	| xml parser |

	xml := '<prefix:root xmlns:prefix="prefixNS" xmlns="defaultNS"></prefix:root>'.
	(parser := SAXHandlerProxy saxHandler: (SAXHandler on: xml)) parseDocument.
	self assert:
		#(startDocument
			startPrefixMapping:uri: startPrefixMapping:uri:
			startElement:prefix:uri:localName:attributes: endElement:prefix:uri:localName:
			endPrefixMapping: endPrefixMapping:
			endDocument) = parser sentHandlerSelectors.
	self assert:
		((parser sentHandlerMessages select: [:each |
			#(startPrefixMapping:uri: endPrefixMapping:) includes: each selector])
				collect: [:each | each arguments asArray]) asArray =
					#(#('prefix' 'prefixNS') #('' 'defaultNS') #('prefix') #('')).