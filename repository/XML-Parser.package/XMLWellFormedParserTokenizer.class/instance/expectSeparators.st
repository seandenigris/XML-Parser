tokenizing - expecting
expectSeparators
	"nil understands isXMLSeparator so no nil test is needed"
	streamReader peek isXMLSeparator
		ifTrue: [
			streamReader
				next;
				skipSeparators]
		ifFalse: [self errorExpectedSeparators]