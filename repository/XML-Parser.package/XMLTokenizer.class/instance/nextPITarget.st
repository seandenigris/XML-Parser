tokenizing
nextPITarget
	| target |

	target := self nextName.
	target asLowercase = 'xml'
		ifTrue: [
			(target ~= 'xml')
				ifTrue: [self parseError: 'The "xml" target must be lowercase'].
			(context isInProlog or: [context isInTextDeclaration])
				ifFalse: [
					self parseError:
						'XML declaration outside of prolog or text declaration']].
	^ target.