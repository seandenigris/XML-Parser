tests
testPrintedWithoutSelfClosingTags
	| nodeWithElements printString |

	nodeWithElements := self newNodeWithElements.
	printString := nodeWithElements printString.
	self deny: printString = nodeWithElements printedWithoutSelfClosingTags.

	nodeWithElements allElementsDo: [:each |
		each hasChildren
			ifFalse: [
				printString :=
					printString
						copyReplaceAll: '<', each name, ' />'
						with: '<', each name, '></', each name, '>']].
	self assert: printString = nodeWithElements printedWithoutSelfClosingTags.