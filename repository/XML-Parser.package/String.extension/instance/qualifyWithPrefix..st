*XML-Parser
qualifyWithPrefix: aPrefix
	aPrefix size > 0
		ifTrue: [^ (aPrefix copyWith: $:), self]
		ifFalse: [^ self]