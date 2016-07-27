encodings
detectBigEndianUTF32OrImplicitEncdoing
	self
		detectByteOrderMark: UTF32BigEndianByteOrderMark
		forDecoderClass: XMLUTF32BigEndianStreamDecoder.
	(remainder ifNil: [^ self]) do: [:each |
		each == NullCharacter
			ifFalse: [^ self]].

	(remainder size = 1
		and: [stream atEnd not
			and: [stream peek == $<]])
		ifTrue: [
			stream next.
			streamDecoder := XMLUTF16BigEndianStreamDecoder new.
			remainder := '<'.
			^ self].
	(remainder size = 2
		and: [stream atEnd not
			and: [stream peek == NullCharacter]])
		ifTrue: [
			stream next.
			stream atEnd
				ifFalse: [ 
					remainder := stream next asString.
					streamDecoder := XMLUTF32BigEndianStreamDecoder new]].