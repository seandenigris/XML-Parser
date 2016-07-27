tokenizing
nextGeneralEntityReferenceOnWriteStream
	"returns the (first) character written to 'writeStream' if any, nil otherwise"
	| name |

	name := self nextName.
	self expectNext: $;.
	PredefinedEntities
		at: name
		ifPresent: [:character |
			driver replacesContentEntityReferences
				ifFalse: [^ self nextUnreplacedGeneralEntityOnWriteStreamNamed: name].
			writeStream nextPut: character.
			^ character].

	(driver handleGeneralEntityReference: name)
		ifNil: [
			(driver replacesContentEntityReferences not
				or: [driver preservesUndeclaredEntityReferences])
				ifTrue: [^ self nextUnreplacedGeneralEntityOnWriteStreamNamed: name].
			driver handleUnreplacedGeneralEntityReference: name]
		ifNotNil: [:entity |
			driver replacesContentEntityReferences
				ifFalse: [^ self nextUnreplacedGeneralEntityOnWriteStreamNamed: name].
			self constructReplacementForGeneralEntity: entity].
	^ nil.