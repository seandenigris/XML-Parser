private
handleBOM: aByteOrderMark forDecoderClass: aDecoderClass ifUnmatched: aBlock
	"to:do: for speed"
	1 to: aByteOrderMark size do: [:i |
		(stream atEnd not
			and: [stream peek == (aByteOrderMark at: i)])
			ifFalse: [
				aBlock value: (aByteOrderMark copyFrom: 1 to: i - 1).
				^ self].
		stream next].

	streamReader decodeStreamWithDecoder: aDecoderClass new.