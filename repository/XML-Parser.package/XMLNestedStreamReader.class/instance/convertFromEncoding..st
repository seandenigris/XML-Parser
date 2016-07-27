decoding
convertFromEncoding: anEncodingName
	| streamConverter |

	"encoding declarations for the default encoding are ignored on ReadStreams,
	which are assumed to be on strings that don't need decoding"
	streamConverter := anEncodingName asXMLStreamConverter.
	((stream isKindOf: ReadStream)
		and: [streamConverter isDefault
			or: [streamConverter isNull]])
		ifFalse: [self decodeStreamWithConverter: streamConverter].