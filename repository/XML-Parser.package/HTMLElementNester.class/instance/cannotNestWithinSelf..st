testing
cannotNestWithinSelf: anElementName
	| tagGroup |

	(NonNestableElements includes: anElementName)
		ifFalse: [^ false].
		
	"tags like <td> can nest in each other if there is a <table> between
	them like <td><table><tr><td>...."
	((tagGroup := NestableTagGroups at: anElementName ifAbsent: [#()])
		anySatisfy: [:each | self hasOpenElement: each])
		ifFalse: [^ true].

	self openElementsReverseDo: [:each |
		each = anElementName
			ifTrue: [^ true].
		(tagGroup includes: each)
			ifTrue: [^ false]].