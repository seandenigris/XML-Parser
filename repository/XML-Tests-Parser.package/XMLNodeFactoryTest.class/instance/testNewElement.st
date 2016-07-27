tests
testNewElement
	| element |

	element := self newFactory newElement.
	self assert: element class == self elementClass.