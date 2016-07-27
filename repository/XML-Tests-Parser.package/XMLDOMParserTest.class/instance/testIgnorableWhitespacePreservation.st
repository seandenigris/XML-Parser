tests
testIgnorableWhitespacePreservation
	| xml document elements |

	xml :=
		'<one>
			<two>
					<three>
					test
					</three>
			</two>
		</one>'.
	document :=
		(XMLDOMParser on: xml)
			preservesIgnorableWhitespace: true;
			parseDocument.
	elements := document allElements.
	self
		assert: document allNodes size = 9;
		assert: elements size = 3.
	"avoid allButLastDo: for portability"
	elements allButLast do: [:each |
		self
			assert: each nodes size = 3;
			assert: (each firstNode isStringNode and: [each firstNode isWhitespace]);
			assert: (each lastNode isStringNode and: [each lastNode isWhitespace])].
	self
		assert: elements last nodes size = 1;
		assert: elements last firstNode isStringNode;
		deny: elements last firstNode isWhitespace.

	document :=
		(XMLDOMParser on: xml)
			preservesIgnorableWhitespace: false;
			parseDocument.
	elements := document allElements.
	self
		assert: document allNodes size = 5;
		assert: elements size = 3.
	elements do: [:each |
		self
			assert: each nodes size = 1;
			deny: (each firstNode isStringNode and: [each firstNode isWhitespace])].