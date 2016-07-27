writing
writeStreamDecoding: aBoolean
	| writeStream |

	writeStream :=
		[XMLFileWriteStreamFactory onPath: path]
			on: Error
			do: [:error | XMLFileException signalMessageFrom: error].

	aBoolean
		ifTrue: [^ XMLEncodingWriteStreamAdapter on: writeStream]
		ifFalse: [^ writeStream].