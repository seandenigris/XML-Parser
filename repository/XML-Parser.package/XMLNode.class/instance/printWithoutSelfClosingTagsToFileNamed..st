printing
printWithoutSelfClosingTagsToFileNamed: aFileName
	self
		withNewWriteStreamOnFileNamed: aFileName
		do: [:writeStream | self printWithoutSelfClosingTagsOn: writeStream]