tokenizing
nextPITarget
	| target |

	(target := self nextName) size = 3
		ifTrue: [
			target = 'xml'
				ifTrue: [
					context isXMLDeclarationContext
						ifFalse: [self errorXMLDeclarationNotAtBeginning]]
				ifFalse: [
					target asLowercase = 'xml'
						ifTrue: [self errorReservedPITarget: target]]].
	^ target.