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
	root stringsDo: [:each |
		self assert: (each notEmpty and: [each allSatisfy: [:c | c isSeparator ]])].

	notPreserved := root nodes second.
	self assert: notPreserved nodes size = 1.

	preserved := notPreserved firstNode.
	self
		assert: preserved contentString notEmpty;
		assert: (preserved contentString allSatisfy: [:each | each isSeparator]).