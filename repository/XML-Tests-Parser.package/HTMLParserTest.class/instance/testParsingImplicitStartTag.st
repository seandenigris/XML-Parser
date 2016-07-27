tests
testParsingImplicitStartTag
	| paragraphs |

	paragraphs := (HTMLParser parse: '</p></p>') allElementsNamed: 'p'.
	self
		assert: paragraphs size = 2;
		deny: (paragraphs anySatisfy: [:each | each hasChildren]).