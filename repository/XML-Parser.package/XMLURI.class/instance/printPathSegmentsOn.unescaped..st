printing
printPathSegmentsOn: aStream unescaped: aBoolean
	pathSegments
		do: [:each |
			aBoolean
				ifTrue: [self printUnescaped: each on: aStream]
				ifFalse: [aStream nextPutAll: each]]
		separatedBy: [aStream nextPut: $/]