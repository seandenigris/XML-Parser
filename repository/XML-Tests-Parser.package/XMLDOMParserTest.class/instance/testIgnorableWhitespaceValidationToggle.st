tests
testIgnorableWhitespaceValidationToggle
	| parser |

	parser := XMLDOMParser on: ''.
	self
		assert: parser isValidating;
		deny: parser preservesIgnorableWhitespace;
		assert: (parser preservesIgnorableWhitespace: true) == parser;
		assert: parser preservesIgnorableWhitespace;
		assert: parser isValidating.

	self
		assert: (parser preservesIgnorableWhitespace: false) == parser;
		assert: parser isValidating;
		deny: parser preservesIgnorableWhitespace.

	self
		assert: (parser preservesIgnorableWhitespace: true) == parser;
		assert: (parser isValidating: false) == parser;
		deny: parser isValidating;
		deny: parser preservesIgnorableWhitespace.

	self
		assert: (parser preservesIgnorableWhitespace: true) == parser;
		assert: parser isValidating;
		assert: parser preservesIgnorableWhitespace.