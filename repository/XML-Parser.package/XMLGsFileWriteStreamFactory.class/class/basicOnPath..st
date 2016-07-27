instance creation
basicOnPath: aPathString
	^ (Smalltalk at: #GsFile)
		open: aPathString
		mode: 'wb' "binary to avoid CRLF<->LF conversions on Windows"
		onClient: false "use server files by default"