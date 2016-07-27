reading
readStreamUpToLimit: aMaxSize decoding: aBoolean
	| fileSize readStream |

	self isFile
		ifFalse: [self errorNotAFile].
	
	(fileSize := self fileSize) > 0
		ifFalse: [ ^ '' readStream].

	(aMaxSize notNil
		and: [fileSize > aMaxSize])
		ifTrue: [self errorFileSize: fileSize exceedsMaxSize: aMaxSize].

	[readStream := XMLFileReadStreamFactory onPath: path]
		on: Error
		do: [:error | XMLFileException signalMessageFrom: error].

	aBoolean
		ifTrue: [| decodingReadStreamAdapter |
			decodingReadStreamAdapter := XMLDecodingReadStreamAdapter on: readStream.
			(XMLFileStreamEncodingDetector for: decodingReadStreamAdapter)
				detectCurrentEncoding.
			^ decodingReadStreamAdapter]
		ifFalse: [^ readStream].