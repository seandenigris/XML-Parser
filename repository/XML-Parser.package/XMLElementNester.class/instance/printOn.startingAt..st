printing
printOn: aStream startingAt: aPosition
	| endPosition |

	endPosition :=  self openElements size min: (aPosition + self printLimit - 1).
	(self openElements copyFrom: aPosition to: endPosition)
		do: [:each |
			aStream
				nextPut: $<;
				nextPutAll: each;
				nextPut: $>]
		separatedBy: [aStream nextPutAll: ', '].
	(endPosition < self openElements size)
		ifTrue: [aStream nextPutAll: '...'].