handling tokens
handlePCData: aString
	self languageEnvironment
		ifNotNil: [aString applyLanguageInfomation: self languageEnvironment].
	self isValidating
		ifTrue: [self  validator validatePCData: aString].

	self saxHandler 
		characters: aString