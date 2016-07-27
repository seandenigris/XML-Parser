private
newFileReadStreamOnPath
	"memory file references need special handling"
	self fileReference fileSystem isMemoryFileSystem
		ifTrue: [^ self fileReference readStream]
		ifFalse: [^ super newFileReadStreamOnPath]