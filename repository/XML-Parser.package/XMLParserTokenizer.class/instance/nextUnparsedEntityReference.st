tokenizing
nextUnparsedEntityReference
	| name |

	name := self nextName.
	self expectNext: $;.

	^ (driver handleUnparsedEntityReference: name) ifNil: [''].