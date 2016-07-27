tests
testPrettyPrinted
	| nodeWithElements printString prettyPrintString prettyNodeWithElements |

	nodeWithElements := self newNodeWithElements.
	printString := nodeWithElements printString.
	prettyPrintString := nodeWithElements prettyPrinted.
	self deny: printString = prettyPrintString.

	prettyNodeWithElements :=
		(XMLDOMParser on: prettyPrintString)
			preservesIgnorableWhitespace: true;
			parseDocument.
	nodeWithElements allElements
		with: prettyNodeWithElements allElements
		do: [:element :prettyElement |
			element hasChildren
				ifTrue: [
					element firstNode isStringNode
						ifFalse: [
							self
								assert: prettyElement firstNode isStringNode;
								assert: prettyElement firstNode isWhitespace].
					element hasStringNodes
						ifFalse: [
							self
								assert: prettyElement lastNode isStringNode;
								assert: prettyElement lastNode isWhitespace]]].