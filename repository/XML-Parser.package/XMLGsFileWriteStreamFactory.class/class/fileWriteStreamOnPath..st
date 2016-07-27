instance creation
fileWriteStreamOnPath: aPath
	^ (Smalltalk at: #GSFile)
		open: aPath
		mode: 'wb' "binary to avoid CRLF<->LF conversions on Windows"
		onClient: false "use server files by default"