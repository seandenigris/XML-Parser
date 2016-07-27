tests
testTokenizerAddressBook
	| tokenizer |

	tokenizer :=
		XMLWellFormedParserTokenizer
			driver: nil
			on: self addressBookXML readStream.
	self
		shouldnt: [[tokenizer streamReader next notNil] whileTrue]
		raise: XMLParserException.