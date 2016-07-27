tests
testConfiguration
	| parser oldConfiguration newConfiguration |

	parser := SAXHandler on: self prefixedXMLSource.
	oldConfiguration := parser configuration.
	self assert: (oldConfiguration isKindOf: XMLConfiguration).

	newConfiguration := XMLConfiguration new.
	self
		assert: (parser configuration: newConfiguration) == parser;
		assert: parser configuration == newConfiguration.