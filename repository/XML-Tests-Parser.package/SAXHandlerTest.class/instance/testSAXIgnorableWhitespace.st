tests
testSAXIgnorableWhitespace
	| xml parser |

	xml := '
	<one>
		<two>
			test
		</two>
	</one>
	'.
	(parser := SAXHandlerProxy on: xml) parseDocument.
	self assert:
		(parser wasSentSelectors: 
			#(startDocument
				startElement:prefix:uri:localName:attributes:
				ignorableWhitespace:
				startElement:prefix:uri:localName:attributes: characters: endElement:prefix:uri:localName:
				ignorableWhitespace:
				endElement:prefix:uri:localName:
				ignorableWhitespace:
				endDocument)).
	(parser allSentMessagesNamed: #ignorableWhitespace:) do: [:each |
		self assert:
			((each arguments first) notEmpty
				and: [each arguments first allSatisfy: [:char | char isSeparator]])].