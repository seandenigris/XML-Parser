tokenizing
nextEndDocument
	context canTerminateDocument
		ifFalse: [self errorDocumentTerminatedPrematurely].
	super nextEndDocument.