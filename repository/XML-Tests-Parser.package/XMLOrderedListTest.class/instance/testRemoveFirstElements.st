tests
testRemoveFirstElements
	| list removedElements |

	"The return value of #removeFirst: is an Array"
	list := self listWithElements.
	removedElements := list removeFirst: list size // 2.
	self
		assert: removedElements = (self listElements copyUpTo: list first);
		assert: list = (self listWithElements copyAfter: removedElements last);
		deny: list asArray = removedElements asArray;
		assert: (list removeFirst: 0) isEmpty;
		should: [list removeFirst: list size + 1] raise: Error.