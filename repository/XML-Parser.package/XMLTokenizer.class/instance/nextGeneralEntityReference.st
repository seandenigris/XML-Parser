tokenizing
nextGeneralEntityReference
	| name entity replacement onClose |

	name := self nextName.
	self expectNext: $;.
	(self class predefinedEntities includesKey: name)
		ifTrue: [^ self class predefinedEntities at: name].

	entity := driver handleGeneralEntityReference: name.
	replacement := self replacementFromGeneralEntity: entity.

	replacement
		ifNotEmpty: [
			context isInContent
				ifTrue: [
					driver handleStartContentEntityReplacement: name.
					onClose := [driver handleEndContentEntityReplacement: name]].
			self
				pushBackReplacement: replacement
				forEntity: entity
				onClose: onClose].
	^ nil.