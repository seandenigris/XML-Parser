private
deleteFileOrDo: aBlock
	[(self directoryEntry ifNil: [^ aBlock value]) delete]
		on: Error
		do: aBlock