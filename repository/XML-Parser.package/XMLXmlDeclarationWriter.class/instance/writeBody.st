accessing
writeBody
	self writer
		writeName: 'version' value: self version asString;
		space;
		writeName: 'encoding' value: self encoding.

	self standalone
		ifNotNil: [
			self writer
				space;
				writeName: 'standalone'
				value: (self standalone ifTrue: ['yes'] ifFalse: ['no'])]