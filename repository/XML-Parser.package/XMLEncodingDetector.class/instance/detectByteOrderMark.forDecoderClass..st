private
detectByteOrderMark: aByteOrderMark forDecoderClass: aClass
	stream next.
	2 to: aByteOrderMark size do: [:i |
		(stream atEnd not
			and: [stream peek == (aByteOrderMark at: i)])
			ifFalse: [
				remainder := aByteOrderMark copyFrom: 1 to: i - 1.
				^ self].
		stream next].
	streamDecoder := aClass new.