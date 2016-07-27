*xml-parser
applyLanguageInfomation: aLanguageEnvironment
	| leadingChar |

	leadingChar := aLanguageEnvironment leadingChar.
	self withIndexDo: [:each :i |
		each asciiValue > 255
			ifTrue: [
				self
					at: i
					put: (Character leadingChar: leadingChar code: each asUnicode)]]