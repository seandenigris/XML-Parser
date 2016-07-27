tokenizing
nextPITarget
	| target |

	target := self nextName.
	(target = 'xml'
		and: [context isInProlog not
			and: [context isInTextDeclaration not]])
		ifTrue: [self errorXMLDeclarationInContent].

	^ target.