tests
testTokenizerAddressBookWithDTD
	| tokenizer |
	tokenizer := XMLTokenizer driver: nil on: self addressBookXMLWithDTD readStream.
	[tokenizer streamReader next notNil] whileTrue