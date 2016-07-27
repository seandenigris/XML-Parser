accessing
innerXML
	^ self
			withNewXMLWriterDo: [ :writer | self writeInnerXMLOn: writer.
																writer contents ]
			