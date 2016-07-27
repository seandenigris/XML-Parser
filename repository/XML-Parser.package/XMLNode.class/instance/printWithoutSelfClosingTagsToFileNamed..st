printing
printWithoutSelfClosingTagsToFileNamed: aFileName
	self
		withWriteStreamOnFileNamed: aFileName
		do: [:writeStream | self printWithoutSelfClosingTagsOn: writeStream]