validating
validateEntityReference: anEntity inAttribute: anAttribute
	| notation |

	notation :=
		self unparsedEntities
			at: anEntity
			ifAbsent: [
				self
					errorUndeclaredUnparsedEntityReference: anEntity
					inAttribute: anAttribute].
	(self notations includes: notation)
		ifFalse: [
			self
				errorUndeclaredNotation: notation
				inEntity: anEntity]