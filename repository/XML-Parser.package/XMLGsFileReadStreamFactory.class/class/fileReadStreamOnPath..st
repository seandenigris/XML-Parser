instance creation
fileReadStreamOnPath: aPath
	^ (Smalltalk at: #GsFile)
		open: aPath
		mode: 'rb' "binary to avoid CRLF<->LF conversions on Windows"
		onClient: false "use server files by default"