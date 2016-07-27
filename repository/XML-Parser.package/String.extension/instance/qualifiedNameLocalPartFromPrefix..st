*XML-Parser
qualifiedNameLocalPartFromPrefix: aPrefix
	"optimized"
	aPrefix size > 0
		ifTrue: [^ self copyFrom: aPrefix size + 2 to: self size]
		ifFalse: [^ self]