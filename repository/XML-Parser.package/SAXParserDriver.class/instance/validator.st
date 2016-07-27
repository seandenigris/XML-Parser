accessing
validator
	^ validator ifNil: [validator := DTDDocumentValidator dtd: self dtd]