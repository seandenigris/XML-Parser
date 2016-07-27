tokenizing
nextGeneralEntityReference
	| name entity replacement onClose |

	name := self nextName.
	self expectNext: $;.
	(self predefinedEntities includesKey: name)
		ifTrue: [^ self predefinedEntities at: name].

	replacement := ''.
	(entity := driver handleGeneralEntityReference: name)
		ifNotNil: [
			replacement :=
				(context isInLiteralValue
					ifTrue: [entity replacementForLiteralContext]
					ifFalse: [entity replacementForContentContext])].
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