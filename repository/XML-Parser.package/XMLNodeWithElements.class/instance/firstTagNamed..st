searching
firstTagNamed: aName 
	"Return the first encountered node with the specified tag. Pass the message on"

	^ self searchWith: [:each | each isNamed: aName]