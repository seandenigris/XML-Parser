detecting
detectCurrentEncoding
	| characterCode handlerSelector |

	(stream := streamReader stream) atEnd
		ifTrue: [^ self].

	stream isDecodingReadStreamAdapter
		ifTrue: [
			stream streamDecoder isDefaultStreamDecoder
				ifFalse: [^ self].
			stream := stream stream].

	((characterCode := stream peek asciiValue) < 256
		and: [(handlerSelector := EncodingHandlerTable at: characterCode + 1) notNil])
		ifTrue: [self perform: handlerSelector].