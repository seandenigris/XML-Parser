parsing
parse
	"the tokenizer removes all spaces from the content model"
	(contentModel isEmpty or: [contentModel = 'ANY'])
		ifTrue: [^ XMLAnyElementValidator name: name].
	(contentModel = 'EMPTY')
		ifTrue: [^ XMLEmptyElementValidator name: name].

	(contentModel beginsWith: '(#PCDATA')
		ifTrue: [^ self parseMixedContentModel]
		ifFalse: [^ self parseDFAContentModel].