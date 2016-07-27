paths
combineRelative: aRelativePath withBase: aBasePath
	| basePathObject fullPathString |

	(self isNonRelative: aRelativePath)
		ifTrue: [^ aRelativePath].

	basePathObject := self pathObjectFrom: aBasePath.
	fullPathString :=
		(basePathObject isRoot or: [aBasePath last == self pathSeparator])
			ifTrue: [self pathToString: (basePathObject / (self trimRelativePath: aRelativePath))]
			ifFalse: [
				self pathSeparator join:
					(basePathObject segments allButLast
						copyWith: (self trimRelativePath: aRelativePath))].
	^ (self isNonRelative: aBasePath)
		ifTrue: [self makeNonRelative: fullPathString]
		ifFalse: [fullPathString].