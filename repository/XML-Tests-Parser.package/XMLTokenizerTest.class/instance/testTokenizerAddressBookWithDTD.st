tests
testTokenizerAddressBookWithDTD
	| tokenizer |

	tokenizer :=
		XMLWellFormedParserTokenizer
			driver: nil
			on: self addressBookXMLWithDTD readStream.
	self
		shouldnt: [[tokenizer streamReader next notNil] whileTrue]
		raise: XMLParserException.