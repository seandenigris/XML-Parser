tests
testSAXStartElementPrefixURIForwarding
	| messageRecorder message arguments |

	messageRecorder :=
		(SAXElementPrefixURIEventRecordingHandler on: self prefixedXMLSource)
			parseDocument;
			messageRecorder.

	message := messageRecorder nextMessage.
	self assert: message selector == #startElement:prefix:uri:attributes:.

	arguments := message arguments.
	self
		assert: arguments first = 'prefix:test';
		assert: arguments second = 'prefix';
		assert: arguments third = 'prefixNS';
		assert: arguments fourth = self prefixedXMLAttributes.