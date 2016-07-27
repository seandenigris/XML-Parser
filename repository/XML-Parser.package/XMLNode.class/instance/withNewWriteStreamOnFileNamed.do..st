private
withNewWriteStreamOnFileNamed: aFileName do: aBlock
	aFileName asXMLFileHandle writeStreamDo: [:writeStream | | streamConverter |
		self document
			ifNotNil: [:document |
				streamConverter :=
					XMLStreamConverter newForEncoding: document encoding].
		writeStream
			streamConverter:
				(streamConverter ifNil: [XMLStreamConverter default]);
			nextPutByteOrderMark.
		aBlock value: writeStream]