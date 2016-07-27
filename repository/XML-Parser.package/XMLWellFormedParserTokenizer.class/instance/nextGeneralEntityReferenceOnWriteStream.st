tokenizing
nextGeneralEntityReferenceOnWriteStream
	"returns true if writeStream is written to, false otherwise"
	| name entity |

	name := self nextName.
	self expectNext: $;.
	PredefinedEntities
		at: name
		ifPresent: [:character |
			driver replacesContentEntityReferences
				ifFalse: [^ self nextUnreplacedGeneralEntityOnWriteStreamNamed: name].
			writeStream nextPut: character.
			^ true].

	(entity := driver handleGeneralEntityReference: name)
		ifNil: [
			(driver replacesContentEntityReferences not
				or: [driver preservesUndeclaredEntityReferences])
				ifTrue: [^ self nextUnreplacedGeneralEntityOnWriteStreamNamed: name].
			driver handleUnreplacedGeneralEntityReference: name.
			^ false].
	driver replacesContentEntityReferences
		ifFalse: [^ self nextUnreplacedGeneralEntityOnWriteStreamNamed: name].
	entity constructReplacementOn: self.
	^ false.