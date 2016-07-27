printing
withNewXMLWriterDo: aOneArgBlock
	^ self withNewXMLWriterDo: aOneArgBlock whenAbsent: [ self raiseXMLWriterRequired ]
	