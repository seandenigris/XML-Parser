xmltokenizer
testTokenizerAddressBook
	| tokenizer |
	tokenizer := XMLTokenizer on: self addressBookXML readStream.
	[tokenizer next notNil]
		whileTrue: []