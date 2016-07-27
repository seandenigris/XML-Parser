testing
isNamed: aName
	"Does the receiver's qualified or local name match the argument?'"
	^ self nodeName isSameAs: aName