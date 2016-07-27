printing
printOn: aStream startingAt: aPosition
	| endPosition |

	endPosition :=  self totalOpen min: (aPosition + self maxTagsToPrint - 1).
	(self tags copyFrom: aPosition to: endPosition)
		do: [:each |
			aStream
				nextPut: $<;
				nextPutAll: each;
				nextPut: $>]
		separatedBy: [aStream nextPutAll: ', '].
	(endPosition < self totalOpen)
		ifTrue: [aStream nextPutAll: '...'].