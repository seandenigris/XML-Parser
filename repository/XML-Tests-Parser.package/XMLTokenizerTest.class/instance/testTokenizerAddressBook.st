tests
testTokenizerAddressBook
	| tokenizer |

	tokenizer :=
		self tokenizerClass
			driver: nil
			on: self addressBookXML readStream.
	self
		shouldnt: [[tokenizer streamReader next notNil] whileTrue]
		raise: XMLParserException.