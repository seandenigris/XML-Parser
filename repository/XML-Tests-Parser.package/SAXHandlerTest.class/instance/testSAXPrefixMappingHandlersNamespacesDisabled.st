tests
testSAXPrefixMappingHandlersNamespacesDisabled
	| parser |

	(parser := SAXHandlerProxy saxHandler: (SAXHandler on: self prefixedXMLSource))
		usesNamespaces: false;
		parseDocument.
	self assert:
		#(startDocument
			startElement:prefix:uri:localName:attributes:
			characters:
			endElement:prefix:uri:localName:
			endDocument) = parser sentHandlerSelectors.