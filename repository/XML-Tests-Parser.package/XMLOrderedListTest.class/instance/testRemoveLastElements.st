tests
testRemoveLastElements
	| list removedElements |

	"The return value of #removeLast: is an Array"
	list := self listWithElements.
	removedElements := list removeLast: list size // 2.
	self
		assert: removedElements = (self listElements copyAfter: list last);
		assert: list = (self listWithElements copyUpTo: removedElements first);
		deny: list asArray = removedElements asArray;
		assert: (list removeLast: 0) isEmpty;
		should: [list removeLast: list size + 1] raise: Error.