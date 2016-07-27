tests
testTokenizerAddressBook
	| tokenizer |
	tokenizer :=
		XMLWellFormedParserTokenizer
			driver: nil
			on: self addressBookXML readStream.
	[tokenizer streamReader next notNil] whileTrue.