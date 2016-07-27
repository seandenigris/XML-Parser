xmltokenizer
testTokenizerAddressBook
	| tokenizer |
	tokenizer := XMLTokenizer on: self addressBookXML readStream.
	[tokenizer streamReader next notNil] whileTrue