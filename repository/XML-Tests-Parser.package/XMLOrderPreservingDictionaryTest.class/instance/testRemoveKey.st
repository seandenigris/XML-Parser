tests
testRemoveKey
	"self debug: #testRemoveKey"
	| collection oldSize keyIn |

	collection := self nonEmptyDict .
	oldSize := collection size.
	keyIn := collection  keys anyOne.
	
	collection removeKey: keyIn .
	self assert: (collection  size = (oldSize - 1)).
	self shouldnt: [ (collection  at: keyIn )] raise: Error.
	self shouldnt: [collection removeKey: self keyNotInNonEmptyDict] raise: Error