private
errorFileSize: aFileSize exceedsMaxSize: aMaxSize
	XMLLimitException
		formatSignal: 'File size {1} bytes exceeds max size of {2}: {3}'
		with: aFileSize
		with: aMaxSize
		with: self path