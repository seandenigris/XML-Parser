tests
testTokenizerAddressBookWithDTD
	| tokenizer |
	tokenizer :=
		XMLWellFormedParserTokenizer
			driver: nil
			on: self addressBookXMLWithDTD readStream.
	[tokenizer streamReader next notNil] whileTrue.