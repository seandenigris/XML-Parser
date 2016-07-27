accessing
fileClient
	^ fileClient ifNil: [fileClient := XMLFileClient defaultImplementation new]