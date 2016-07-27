tests
testTokenizerAddressBookWithDTD
	| tokenizer |

	tokenizer :=
		self tokenizerClass
			driver: nil
			on: self addressBookXMLWithDTD readStream.
	self
		shouldnt: [[tokenizer streamReader next notNil] whileTrue]
		raise: XMLParserException.