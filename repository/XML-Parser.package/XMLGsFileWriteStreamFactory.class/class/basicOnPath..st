instance creation
basicOnPath: aPathString
	^ (XMLClassFinder classNamed: #GsFile)
		open: aPathString
		mode: 'wb' "binary to avoid CRLF<->LF conversions on Windows"
		onClient: false "use server files by default"