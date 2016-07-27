detecting
detectCurrentEncoding
	| handlerTableIndex handlerSelector |

	((stream := streamReader stream) atEnd
		or: [stream isDecodingReadStreamAdapter
			and: [stream streamDecoder isDefaultStreamDecoder not]])
		ifTrue: [^ self].

	stream isDecodingReadStreamAdapter
		ifTrue: [stream := stream stream].

	"the index is asciiValue + 1 for null"
	((handlerTableIndex := stream peek asciiValue + 1) <= EncodingHandlerTable size
		and: [(handlerSelector := EncodingHandlerTable at: handlerTableIndex) notNil])
		ifTrue: [self perform: handlerSelector].