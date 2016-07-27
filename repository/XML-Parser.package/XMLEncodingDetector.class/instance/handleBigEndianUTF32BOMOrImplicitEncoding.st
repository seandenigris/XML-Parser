private
handleBigEndianUTF32BOMOrImplicitEncoding
	self
		handleBOM: UTF32BigEndianBOM
		forConverterClass: XMLUTF32BigEndianStreamConverter
		ifUnmatched: [:matchedPortion | | nextChar |
			(matchedPortion size = 1 "one null char"
				and: [(nextChar := self nextASCII) notNil])
				ifTrue: [
					self
						decodeStreamWithConverter: XMLUTF16BigEndianStreamConverter new;
						pushBackCharacter: nextChar]
				ifFalse: [
					(matchedPortion size = 2  "two null chars"
						and: [self peekForNull])
						ifTrue: [
							(nextChar := self nextASCII) notNil
								ifTrue: [	
									self
										decodeStreamWithConverter: XMLUTF32BigEndianStreamConverter new;
										pushBackCharacter: nextChar]
								ifFalse: [self pushBack: (matchedPortion copyWith: NullCharacter)]]
						ifFalse: [self pushBack: matchedPortion]]]