parsing
parseDocumentWhile: aBlock
	| parser |

	parser := self parser.
	[parser atEnd not and: [aBlock value]]
		whileTrue: [parser parseToken].

	^ self parsingResult.