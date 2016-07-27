accessing
nextPutAll: aCollection
	"to:do: for speed"
	1 to: aCollection size do: [:i | self nextPut: (aCollection at: i)].
	^ aCollection.