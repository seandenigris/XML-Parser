tests
testSAXPrefixMappingHandlers
	| parser messages |

	(parser := SAXHandlerProxy saxHandler: (SAXHandler on: self prefixedXMLSource)) parseDocument.
	self assert: (parser wasSentSelectors: self prefixedXMLSourceSelectors).

	messages := parser allSentMessagesNamed: #startPrefixMapping:uri:.
	self
		assert: messages first arguments = #('prefix' 'prefixNS');
		assert: messages second arguments = #('' 'defaultNS').

	messages := parser allSentMessagesNamed: #endPrefixMapping:.
	self
		assert: messages first arguments = #('prefix');
		assert: messages second arguments = #('').