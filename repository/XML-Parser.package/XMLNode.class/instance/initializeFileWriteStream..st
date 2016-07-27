private
initializeFileWriteStream: aWriteStream
	| document streamConverter |

	((document := self document) notNil
		and: [document hasEncoding])
		ifTrue: [streamConverter := document encoding asXMLStreamConverter]
		ifFalse: [streamConverter := XMLStreamConverter default].
	aWriteStream
		streamConverter: streamConverter;
		nextPutByteOrderMark.