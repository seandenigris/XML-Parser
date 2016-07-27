encodings
detectCurrentEncoding
	| firstChar characterCode selector encodingDetector |

	stream atEnd
		ifTrue: [^ self].
	firstChar := stream peek.
	((characterCode := firstChar asciiValue) < 256
		and: [(selector := EncodingHandlerTable at: characterCode + 1) notNil])
		ifTrue: [
			(encodingDetector := XMLEncodingDetector on: stream)
				perform: selector]
		ifFalse: [
			firstChar == $<
				ifFalse: [^ self].
			peekChar := stream next.
			(stream atEnd
				or: [stream peek asciiValue > 0])
				ifTrue: [^ self].
			(encodingDetector := XMLEncodingDetector on: stream)
				detectLittleEndianImplicitEncoding].
	encodingDetector streamDecoder
		ifNotNil: [:decoder | self decodeStreamWithDecoder: decoder].
	encodingDetector remainder
		ifNotNil: [:remainder | self pushBack: remainder].