private
nextASCII
	| nextChar |

	((nextChar := self peek) notNil
		and: [nextChar asciiValue < 128])
		ifTrue: [
			self next.
			^ nextChar]
		ifFalse: [^ nil]