private
wideStringFrom: aCollection
	^ String withAll: (aCollection collect: [:each | each asCharacter])