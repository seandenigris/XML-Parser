tokenizing dtd
nextNotationDeclaration
	| name externalId |

	self expectNextAll: 'NOTATION'.
	self skipSeparatorsReplacingParameterEntities.

	name := self nextName.
	self skipSeparatorsReplacingParameterEntities.
	externalId := self nextExternalIDSystemLiteralRequired: false.
	self skipSeparatorsReplacingParameterEntities.
	self expectTerminator: $>.

	driver
		handleNotationDeclaration: name
		publicID: externalId key
		systemID: externalId value.