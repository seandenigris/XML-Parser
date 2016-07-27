printing
printPathWithPercentEncoding: aBoolean on: aStream
	self pathSegments
		do: [:each |
			aBoolean
				ifTrue: [
					self
						print: each
						withPercentEncodingOn: aStream]
				ifFalse: [aStream nextPutAll: each]]
		separatedBy: [aStream nextPut: $/]