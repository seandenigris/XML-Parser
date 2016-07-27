tokenizing
nextStartExternalEntity
	context := context textDeclarationContext.
	driver decodesCharacters
		ifTrue: [streamReader detectCurrentEncoding]
		ifFalse: [streamReader decodeStreamWithConverter: XMLStreamConverter null].
	context nextTokenFrom: self.