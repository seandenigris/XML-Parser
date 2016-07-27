tokenizing
nextGeneralEntityReference
	| name entity replacement startedInContent |

	name := self nextName.
	self expectNext: $;.
	self class predefinedEntities
		at: name
		ifPresent: [:character | ^ character].

	entity := driver handleGeneralEntityReference: name.
	(replacement := self replacementFromGeneralEntity: entity)
		ifNotEmpty: [
			startedInContent := context isInContent.
			self
				pushBackReplacement: replacement
				forEntity: entity
				onClose: [
					self
						endReplacementForGeneralEntity: entity
						isInContent: startedInContent].
			startedInContent
				ifTrue: [driver handleStartContentEntityReplacement: name]].
	^ nil.