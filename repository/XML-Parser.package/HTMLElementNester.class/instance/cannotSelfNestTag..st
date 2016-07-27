private
cannotSelfNestTag: anHtmlTagInfo
	| tagGroup |

	(anHtmlTagInfo isNonNestable)
		ifFalse: [^ false].
		
	"tags like <td> can nest in each other if there is a <table> between
	them like <td><table><tr><td>...."
	((tagGroup := anHtmlTagInfo nestableTagGroup)
		anySatisfy: [:each | self hasOpenElement: each])
		ifFalse: [^ true].

	self openElementsReverseDo: [:each |
		each = anHtmlTagInfo name
			ifTrue: [^ true].
		(tagGroup includes: each)
			ifTrue: [^ false]].