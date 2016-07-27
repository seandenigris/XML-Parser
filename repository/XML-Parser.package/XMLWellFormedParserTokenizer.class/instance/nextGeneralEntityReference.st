tokenizing
nextGeneralEntityReference
	| name |

	name := self nextName.
	self expectNext: $;.
	PredefinedEntities
		at: name
		ifPresent: [:character | ^ character].

	(driver handleGeneralEntityReference: name)
		ifNotNil: [:entity | entity constructReplacementOn: self].
	^ nil.