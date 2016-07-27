tokenizing dtd
nextParameterEntityReference
	| name entity replacement |

	name := self nextName.
	self expectNext: $;.

	entity := driver handleParameterEntityReference: name.
	replacement := self replacementFromParameterEntity: entity.

	replacement
		ifNotEmpty: [
			self
				pushBackReplacement: replacement
				forEntity: entity
				onClose: [self endReplacementForParameterEntity: entity]].