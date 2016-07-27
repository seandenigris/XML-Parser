tests
testSAXIgnorableWhitespace
	| xml parser whitespace |

	xml := '
	<root>
		<child>
			test
		</child>
	</root>
	'.
	(parser := SAXHandlerProxy saxHandler: (SAXHandler on: xml)) parseDocument.
	self assert:
		#(startDocument
			startElement:prefix:uri:localName:attributes:
			ignorableWhitespace:
			startElement:prefix:uri:localName:attributes: characters: endElement:prefix:uri:localName:
			ignorableWhitespace:
			endElement:prefix:uri:localName:
			ignorableWhitespace:
			endDocument) = parser sentHandlerSelectors.
	self assert:
		((parser sentHandlerMessages select: [:each | each selector == #ignorableWhitespace:])
			allSatisfy: [:each |
				(whitespace := each arguments first) notEmpty
					and: [whitespace allSatisfy: [:char | char isSeparator]]]).