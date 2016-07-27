printing
printPathSegmentsOn: aStream
	pathSegments
		do: [:each | aStream nextPutAll: each]
		separatedBy: [aStream nextPut: $/]