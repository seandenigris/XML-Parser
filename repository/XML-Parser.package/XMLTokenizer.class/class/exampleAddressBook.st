examples
exampleAddressBook
	| tokenizer |
	"XMLTokenizer exampleAddressBook"

	tokenizer := XMLTokenizer on: self addressBookXML readStream.
	[tokenizer next notNil]
		whileTrue: []