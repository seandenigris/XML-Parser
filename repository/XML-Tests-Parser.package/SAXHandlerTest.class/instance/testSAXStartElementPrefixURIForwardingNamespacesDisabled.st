tests
testSAXStartElementPrefixURIForwardingNamespacesDisabled
	| messageRecorder message arguments |

	messageRecorder :=
		(SAXElementPrefixURIEventRecordingHandler on: self prefixedXMLSource)
			usesNamespaces: false;
			parseDocument;
			messageRecorder.

	message := messageRecorder nextMessage.
	self assert: message selector == #startElement:prefix:uri:attributes:.

	arguments := message arguments.
	self
		assert: arguments first = 'prefix:test';
		assert: arguments second = 'prefix';
		assert: arguments third isEmpty;
		assert: arguments fourth = self prefixedXMLAttributesNamespacesDisabled.