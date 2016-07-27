tests-xmltokenizer
testTokenizerAddressBook
	| tokenizer |
	tokenizer := XMLTokenizer driver: nil on: self addressBookXML readStream.
	[tokenizer streamReader next notNil] whileTrue