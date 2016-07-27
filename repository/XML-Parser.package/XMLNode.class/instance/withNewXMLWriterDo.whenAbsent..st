printing
withNewXMLWriterDo: aOneArgBlock whenAbsent: aZeroArgBlock
	^ self
			withXMLWriterClassDo: [ :xmlWriterClass | aOneArgBlock value: xmlWriterClass new ]
			whenAbsent: aZeroArgBlock