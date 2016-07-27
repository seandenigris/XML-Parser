examples
exampleAddressBookWithDTD
	| tokenizer |
	"XMLTokenizer exampleAddressBookWithDTD"

	tokenizer := XMLTokenizer on: self addressBookXMLWithDTD readStream.
	[tokenizer next notNil]
		whileTrue: []