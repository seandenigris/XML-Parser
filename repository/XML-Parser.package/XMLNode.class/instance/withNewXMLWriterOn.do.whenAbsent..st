printing
withNewXMLWriterOn: aStream do: aOneArgBlock whenAbsent: aZeroArgBlock
	^ self
			withXMLWriterClassDo: [ :xmlWriterClass | aOneArgBlock value: (xmlWriterClass on: aStream) ]
			whenAbsent: aZeroArgBlock