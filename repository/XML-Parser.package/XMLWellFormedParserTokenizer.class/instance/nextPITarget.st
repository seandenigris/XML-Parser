tokenizing
nextPITarget
	| target |

	target := self nextName.
	(target = 'xml'
		and: [context isPrologContext not])
		ifTrue: [self errorXMLDeclarationInContent].

	^ target.