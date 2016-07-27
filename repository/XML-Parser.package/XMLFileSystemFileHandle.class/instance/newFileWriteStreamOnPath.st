private
newFileWriteStreamOnPath
	"memory file references need special handling"
	self fileReference fileSystem isMemoryFileSystem
		ifTrue: [^ self fileReference writeStream]
		ifFalse: [^ super newFileWriteStreamOnPath]