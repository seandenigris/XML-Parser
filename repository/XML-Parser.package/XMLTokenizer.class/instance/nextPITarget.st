tokenizing
nextPITarget
	| target |

	((target := self nextName) sameAs: 'xml')
		ifTrue: [
			target = 'xml'
				ifFalse: [self parseError: 'The "xml" target must be lowercase'].
			(context isInProlog or: [context isInTextDeclaration])
				ifFalse: [
					self parseError:
						'XML declaration outside of prolog or text declaration']].
	^ target.