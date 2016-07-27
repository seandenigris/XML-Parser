searching
firstTagNamedAny: aNameArray
	"Return the first encountered node with any of the specified tag names. Pass the message on"

	^ self recurseUntilTrue: [:each | each isNamedAny: aNameArray]