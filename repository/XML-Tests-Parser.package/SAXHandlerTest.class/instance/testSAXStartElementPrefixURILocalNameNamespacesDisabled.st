tests
testSAXStartElementPrefixURILocalNameNamespacesDisabled
	| messageRecorder message arguments |

	messageRecorder :=
		(SAXElementPrefixURILocalNameEventRecordingHandler on: self prefixedXMLSource)
			usesNamespaces: false;
			parseDocument;
			messageRecorder.

	message := messageRecorder nextMessage.
	self assert: message selector == #startElement:prefix:uri:localName:attributes:.

	arguments := message arguments.
	self
		assert: arguments first = 'prefix:test';
		assert: arguments second = 'prefix';
		assert: arguments third = '';
		assert: arguments fourth = 'test';
		assert: arguments fifth = self prefixedXMLAttributesNamespacesDisabled.