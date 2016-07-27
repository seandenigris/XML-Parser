private
errorCannotResolveVirtualFilePath: aPath withSelector: aSelector
	XMLFileException
		formatSignal:
			'Cannot resolve virtual file path "{1}" by sending #{2} to {3}: {4}'
		with: aPath
		with: aSelector asString
		with: self virtualFileClass name asString
		with: 'message not understood'