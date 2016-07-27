tests
testSAXEndElementPrefixURIForwardingNamespacesDisabled
	| messageRecorder message |

	messageRecorder :=
		(SAXElementPrefixURIEventRecordingHandler on: self prefixedXMLSource)
			usesNamespaces: false;
			parseDocument;
			messageRecorder.

	message :=
		messageRecorder
			nextMessage;
			nextMessage.
	self
		assert: message selector == #endElement:prefix:uri:;
		assert: message arguments = #('prefix:test' 'prefix' '').