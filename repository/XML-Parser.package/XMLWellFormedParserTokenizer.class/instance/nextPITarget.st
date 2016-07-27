tokenizing
nextPITarget
	| target |

	(target := self nextName) size = 3 "optimization"
		ifTrue: [
			target = 'xml'
				ifTrue: [
					context isXMLDeclarationContext
						ifFalse: [self errorXMLDeclarationNotAtStart]]
				ifFalse: [
					target asLowercase = 'xml'
						ifTrue: [self errorReservedPITarget: target]]].
	^ target.