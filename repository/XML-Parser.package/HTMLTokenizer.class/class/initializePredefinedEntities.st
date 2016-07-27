class initialization
initializePredefinedEntities
	| entityPage entityName codePoint |

	predefinedEntities := Dictionary new.
	entityPage := self htmlEntityPage readStream.
	[entityPage atEnd]
		whileFalse: [
			entityPage upTo: $[.
			entityName := entityPage upTo: $=.
			codePoint := entityPage upTo: $].
			(entityName notEmpty and: [codePoint notEmpty])
				ifTrue: [
					predefinedEntities
						at: entityName
						put: (self encodingClass value: codePoint asInteger)]].