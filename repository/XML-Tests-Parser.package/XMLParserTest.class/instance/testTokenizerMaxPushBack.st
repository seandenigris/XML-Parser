tests-xmltokenizer
testTokenizerMaxPushBack
	| tokenizer |

	tokenizer :=
		XMLTokenizer
			driver: nil
			on: self addressBookXML readStream.
	self
		shouldnt: [
			tokenizer streamReader maxNestedStreams
				timesRepeat: [tokenizer streamReader pushBack: 'test']]
		raise: XMLParserException.
	self
		should: [tokenizer streamReader pushBack: 'test']
		raise: XMLParserException.