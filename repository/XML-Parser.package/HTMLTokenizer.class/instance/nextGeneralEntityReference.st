tokenizing
nextGeneralEntityReference
	| name |

	name := self nextName.
	self expectNext: $;.
	(self class predefinedEntities includesKey: name)
		ifTrue: [^ self class predefinedEntities at: name]
		ifFalse: [^ nil].