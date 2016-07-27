private
withWriteStreamOnFileNamed: aFileName do: aBlock
	^ super
		withWriteStreamOnFileNamed: aFileName
		do: [:writeStream | | streamConverter |
			streamConverter :=
				(XMLStreamConverter newForEncoding: self encoding)
					ifNil: [XMLStreamConverter default].
			writeStream
				streamConverter: streamConverter;
				nextPutByteOrderMark.
			aBlock value: writeStream]