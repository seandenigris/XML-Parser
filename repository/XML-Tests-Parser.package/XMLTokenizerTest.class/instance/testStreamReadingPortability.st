tests
testStreamReadingPortability
	| tokenizer stream |

	tokenizer :=
		XMLWellFormedParserTokenizer
			driver: nil
			on: (stream := XMLExceptionRaisingReadStream on: self addressBookXML).
	self
		shouldnt: [
			[tokenizer streamReader
				peek;
				next] doWhileFalse: [tokenizer streamReader atEnd]]
		raise: Error.

	self assert: stream atEnd.
	self should: [stream peek] raise: Error.
	self should: [stream next] raise: Error.