parsing
parse
	"the tokenizer removes all spaces from the content model"
	(contentModel isEmpty or: [contentModel = 'ANY'])
		ifTrue: [^ XMLAnyElementValidator element: name].
	(contentModel = 'EMPTY')
		ifTrue: [^ XMLEmptyElementValidator element: name].

	^ (contentModel beginsWith: '(#PCDATA')
		ifTrue: [self parseMixedContentModel]
		ifFalse: [self parseDFAContentModel].