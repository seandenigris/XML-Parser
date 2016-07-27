tests
testSAXPrefixMappingHandlersDisabled
	| xml parser |

	xml := '<prefix:root xmlns:prefix="prefixNS" xmlns="defaultNS"></prefix:root>'.
	(parser := SAXHandlerProxy saxHandler: (SAXHandler on: xml))
		usesNamespaces: false;
		parseDocument.
	self assert:
		#(startDocument
			startElement:prefix:uri:localName:attributes: endElement:prefix:uri:localName:
			endDocument) = parser sentHandlerSelectors.