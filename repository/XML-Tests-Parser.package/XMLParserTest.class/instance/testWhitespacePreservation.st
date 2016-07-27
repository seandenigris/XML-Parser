tests
testWhitespacePreservation
	| xml root notPreserved preserved |

	xml := '
		<root xml:space="preserve">
			<not-preserved xml:space="default">
				<preserved xml:space="preserve">
				</preserved>
			</not-preserved>
		</root>'.
	root := (XMLDOMParser parse: xml) root.
	self
		assert: root nodes size = 3;
		assert: root stringNodes size = 2.
	root stringNodesDo: [:each | self assert: each isWhitespace].

	notPreserved := root nodes second.
	self assert: notPreserved nodes size = 1.

	preserved := notPreserved firstElement.
	self
		assert: preserved firstNode isStringNode;
		assert: preserved firstNode isWhitespace.