copying
, aCollection
	"GS does not define , for non-sequenceable collections"
	^ self copy
		addAll: aCollection;
		yourself