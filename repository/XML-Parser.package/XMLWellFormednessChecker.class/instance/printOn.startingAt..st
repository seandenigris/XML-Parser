printing
printOn: aStream startingAt: aPosition
	| endPosition |

	endPosition :=  self totalOpen min: (aPosition + self printLimit - 1).
	(self openElements copyFrom: aPosition to: endPosition)
		do: [:each |
			aStream
				nextPut: $<;
				nextPutAll: each;
				nextPut: $>]
		separatedBy: [aStream nextPutAll: ', '].
	(endPosition < self totalOpen)
		ifTrue: [aStream nextPutAll: '...'].