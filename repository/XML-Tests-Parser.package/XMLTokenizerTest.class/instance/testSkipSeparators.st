tests
testSkipSeparators
	| xml tokenizer streamReader readLimit |

	xml := '
	<test/>'.
	readLimit := xml size.
	tokenizer :=
		self tokenizerClass
			driver: nil
			on: xml readStream
			readLimit: readLimit.
	streamReader := tokenizer streamReader.
	2 timesRepeat: [
		streamReader skipSeparators.
		self
			assert: streamReader currentLineNumber = 2;
			assert: streamReader readLimit = (readLimit - ((xml copyUpTo: $<) size))].

	tokenizer :=
		self tokenizerClass
			driver: nil
			on: xml readStream
			readLimit: nil.
	streamReader := tokenizer streamReader.
	2 timesRepeat: [
		streamReader skipSeparators.
		self
			assert: streamReader currentLineNumber = 2;
			assert: streamReader readLimit isNil].