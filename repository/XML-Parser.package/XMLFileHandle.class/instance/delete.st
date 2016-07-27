deleting
delete
	self deleteFileOrDo: [:error | error resignalAs: XMLFileException]