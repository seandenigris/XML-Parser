private
canSkipDetection
	^ super canSkipDetection
		or: [stream isXMLConvertingStreamAdapter
			and: [stream hasDefaultStreamConverter not]]