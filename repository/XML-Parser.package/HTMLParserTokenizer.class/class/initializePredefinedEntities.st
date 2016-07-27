class initialization
initializePredefinedEntities
	| entityPage entityName codePoint |

	predefinedEntities := Dictionary new.
	entityPage := self htmlEntityPage readStream.
	[entityPage atEnd]
		whileFalse: [
			entityPage skipTo: $[.
			entityName := entityPage upTo: $=.
			codePoint := entityPage upTo: $].
			(entityName notEmpty and: [codePoint notEmpty])
				ifTrue: [
					predefinedEntities
						at: entityName
						put: codePoint asInteger asCharacter]].