tests
testInnerXMLPrettyPrinted
	| nodeWithElements printString prettyPrintString prettyNodeWithElements |

	nodeWithElements := self newNodeWithElements.
	printString := nodeWithElements innerXML.
	prettyPrintString := nodeWithElements innerXMLPrettyPrinted.
	self deny: printString = prettyPrintString.

	prettyNodeWithElements :=
		(XMLDOMParser on: prettyPrintString)
			preservesCommentNodes: true;
			preservesIgnorableWhitespace: true;
			parseDocument.
	(nodeWithElements allElements copyWithout: nodeWithElements)
		with: (prettyNodeWithElements allElements copyWithout: prettyNodeWithElements)
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