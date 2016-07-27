printing
withNewXMLWriterOn: aStream do: aOneArgBlock whenAbsent: aZeroArgBlock
	^ aOneArgBlock value:
		((Smalltalk
			at: #XMLWriter
			ifAbsent: [^ aZeroArgBlock value]) on: aStream)