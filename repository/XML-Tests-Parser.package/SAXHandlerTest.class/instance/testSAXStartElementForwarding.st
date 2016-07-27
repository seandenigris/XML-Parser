tests
testSAXStartElementForwarding
	| messageRecorder message arguments |

	messageRecorder :=
		(SAXElementEventRecordingHandler on: self prefixedXMLSource)
			parseDocument;
			messageRecorder.

	message := messageRecorder nextMessage.
	self assert: message selector == #startElement:attributes:.

	arguments := message arguments.
	self
		assert: arguments first = 'prefix:test';
		assert: arguments second = self prefixedXMLAttributes.