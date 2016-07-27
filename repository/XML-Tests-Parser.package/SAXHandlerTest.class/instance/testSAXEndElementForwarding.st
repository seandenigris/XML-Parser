tests
testSAXEndElementForwarding
	| messageRecorder message |

	messageRecorder :=
		(SAXElementEventRecordingHandler on: self prefixedXMLSource)
			parseDocument;
			messageRecorder.

	message :=
		messageRecorder
			nextMessage;
			nextMessage.
	self
		assert: message selector == #endElement:;
		assert: message arguments = #('prefix:test').