handling tokens
handlePCData: aString
	self languageEnvironment
		ifNotNil: [aString applyLanguageInfomation: self languageEnvironment].
	self saxHandler 
		characters: aString