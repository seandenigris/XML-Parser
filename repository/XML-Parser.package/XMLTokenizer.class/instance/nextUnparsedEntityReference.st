tokenizing
nextUnparsedEntityReference
	| name |

	streamReader next.
	name := self nextName.
	self expectNext: $;.

	^ (driver handleUnparsedEntityReference: name) ifNil: [''].