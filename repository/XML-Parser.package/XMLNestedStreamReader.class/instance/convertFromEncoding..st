encodings
convertFromEncoding: anEncodingName
	| streamConverter |

	"encoding declarations for the default encoding are ignored on ReadStreams,
	which are assumed to be on strings that don't need decoding"
	streamConverter := XMLStreamConverter newForEncoding: anEncodingName.
	(streamConverter == nil
		or: [(stream isKindOf: ReadStream)
			and: [streamConverter isDefault]])
		ifFalse: [self decodeStreamWithConverter: streamConverter].