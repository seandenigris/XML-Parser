tests
testSAXEndElementPrefixURILocalName
	| messageRecorder message |

	messageRecorder :=
		(SAXElementPrefixURILocalNameEventRecordingHandler on: self prefixedXMLSource)
			parseDocument;
			messageRecorder.

	message :=
		messageRecorder
			nextMessage;
			nextMessage.
	self
		assert: message selector == #endElement:prefix:uri:localName:;
		assert: message arguments = #('prefix:test' 'prefix' 'prefixNS' 'test').