private
canSkipDetection
	^ super canSkipDetection
		or: [stream isConvertingStreamAdapter
			and: [stream hasDefaultStreamConverter not]]