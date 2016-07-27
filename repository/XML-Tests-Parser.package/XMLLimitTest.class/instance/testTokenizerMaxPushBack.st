tests
testTokenizerMaxPushBack
	| tokenizer |

	tokenizer :=
		XMLTokenizer
			driver: nil
			on: '' readStream.
	self
		shouldnt: [
			tokenizer streamReader maxNestedStreams
				timesRepeat: [tokenizer streamReader pushBack: 'test']]
		raise: XMLLimitException.
	self
		should: [tokenizer streamReader pushBack: 'test']
		raise: XMLLimitException.