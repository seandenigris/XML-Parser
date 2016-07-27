utility
notifications
	| notifications parser parsedMethods |
	notifications := WriteStream on: (Array new: 10).
	parser := Parser new.
	parsedMethods := IdentityDictionary new.
	(self allMethodsInCategory: #notification)
		do: [ :notifierSelector | 
			| methodNode |
			(SystemNavigation default allSendersOf: notifierSelector inClass: self)
				do: [ :methodReference | 
					methodNode := parsedMethods
						at: methodReference selector
						ifAbsentPut: (parser parse: methodReference sourceCode class: self).
					methodNode
						nodesDo: [ :node | 
							| firstArgument |
							(node isMessage
								and: [ node selector key asSymbol = notifierSelector and: [ (firstArgument := node arguments first) isLiteral ] ])
								ifTrue: [ notifications nextPut: firstArgument key asSymbol ] ] ] ].
	^ notifications contents