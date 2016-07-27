tokenizing
expectLiteral: anExpectedLiteral
	| nextLiteral |

	((nextLiteral := self nextLiteral) = anExpectedLiteral)
		ifFalse: [self errorExpected: anExpectedLiteral butGot: nextLiteral].
	^ nextLiteral.