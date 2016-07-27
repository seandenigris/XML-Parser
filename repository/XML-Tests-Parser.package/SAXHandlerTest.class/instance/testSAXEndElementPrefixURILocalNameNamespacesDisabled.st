tests
testSAXEndElementPrefixURILocalNameNamespacesDisabled
	| messageRecorder message |

	messageRecorder :=
		(SAXElementPrefixURILocalNameEventRecordingHandler on: self prefixedXMLSource)
			usesNamespaces: false;
			parseDocument;
			messageRecorder.

	message :=
		messageRecorder
			nextMessage;
			nextMessage.
	self
		assert: message selector == #endElement:prefix:uri:localName:;
		assert: message arguments = #('prefix:test' 'prefix' '' 'test').