tests
testNextMatchAll
	| xml tokenizer streamReader readLimit |

	xml := '<test>
test
</test>'.
	readLimit := xml size.
	tokenizer :=
		self tokenizerClass
			driver: nil
			on: xml readStream
			readLimit: readLimit.
	streamReader := tokenizer streamReader.
	self
		deny: (streamReader nextMatchAll: '!<test>');
		assert: streamReader currentLineNumber = 1;
		assert: streamReader readLimit = readLimit.
	self
		deny: (streamReader nextMatchAll: '<test>!');
		assert: streamReader currentLineNumber = 1;
		assert: streamReader readLimit = readLimit.
	self
		assert: (streamReader nextMatchAll: '<test>');
		assert: streamReader currentLineNumber = 1;
		assert: streamReader readLimit = (readLimit - '<test>' size).

	tokenizer :=
		self tokenizerClass
			driver: nil
			on: xml readStream
			readLimit: nil.
	streamReader := tokenizer streamReader.
	self
		deny: (streamReader nextMatchAll: '!<test>');
		assert: streamReader currentLineNumber = 1;
		assert: streamReader readLimit isNil.
	self
		assert: (streamReader nextMatchAll: '<test>');
		assert: streamReader currentLineNumber = 1;
		assert: streamReader readLimit isNil.