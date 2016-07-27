private
handleBigEndianUTF32BOMOrImplicitEncoding
	self
		handleBOM: UTF32BigEndianBOM
		forDecoderClass: XMLUTF32BigEndianStreamDecoder
		ifUnmatched: [:matchedPortion |
			(matchedPortion size = 1 "one null char"
				and: [stream atEnd not
					and: [stream peek == $<]])
				ifTrue: [
					stream next.
					streamReader
						decodeStreamWithDecoder: XMLUTF16BigEndianStreamDecoder new;
						pushBackCharacter: $<]
				ifFalse: [
					(matchedPortion size = 2  "two null chars"
						and: [stream atEnd not
							and: [stream peek == NullCharacter]])
						ifTrue: [
							stream next.
							(stream atEnd not
								and: [stream peek == $<])
								ifTrue: [	
									stream next.
									streamReader
										decodeStreamWithDecoder: XMLUTF32BigEndianStreamDecoder new;
										pushBackCharacter: $<]
								ifFalse: [streamReader pushBack: (matchedPortion copyWith: NullCharacter)]]
						ifFalse: [streamReader pushBack: matchedPortion]]]