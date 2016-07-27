tests
testNextElement 
	| root nextElement |

	root := self newNodeWithElements nodeAt: 2.
	root elements reverseDo: [:each |
		self assert: each nextElement == nextElement.
		nextElement := each].