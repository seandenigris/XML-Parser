tests
testElement
	| node element |

	node := self nodeClass new.
	element := XMLElement new.
	node element: element.
	self assert: node element == element.