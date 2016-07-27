printing
withNewXMLWriterOn: aStream do: aOneArgBlock
	^ self
		withNewXMLWriterOn: aStream
		do: aOneArgBlock
		whenAbsent: [ Error signal: 'The XMLWriter package is required for that' ]