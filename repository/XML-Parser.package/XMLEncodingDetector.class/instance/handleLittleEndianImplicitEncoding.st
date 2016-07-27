private
handleLittleEndianImplicitEncoding
	| nextChar |

	nextChar := self nextASCII.
	self peekForNull
		ifTrue: [
			self peekForNull
				ifTrue: [
					self next.
					self decodeStreamWithConverter:
						XMLUTF32LittleEndianStreamConverter new]
				ifFalse: [
					self decodeStreamWithConverter:
						XMLUTF16LittleEndianStreamConverter new]].
	self pushBackCharacter: nextChar.