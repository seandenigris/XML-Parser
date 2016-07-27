tokenizing
expectMore
	streamReader peek ifNil: [self errorExpected: 'more characters']