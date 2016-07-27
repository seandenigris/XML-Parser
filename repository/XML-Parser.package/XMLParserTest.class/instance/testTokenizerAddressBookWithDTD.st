xmltokenizer
testTokenizerAddressBookWithDTD
	| tokenizer |
	tokenizer := XMLTokenizer on: self addressBookXMLWithDTD readStream.
	[tokenizer streamReader next notNil] whileTrue