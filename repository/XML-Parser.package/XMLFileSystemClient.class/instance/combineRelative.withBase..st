paths
combineRelative: aRelativePath withBase: aBasePath
	| basePathObject fullPathString |

	(self isNonRelative: aRelativePath)
		ifTrue: [^ aRelativePath].

	basePathObject := self pathClass from: aBasePath.
	fullPathString :=
		basePathObject asFileReference isDirectory
			ifTrue: [self systemPathFrom: (basePathObject / (self trimRelativePath: aRelativePath))]
			ifFalse: [
				self pathSeparator join:
					(basePathObject segments allButLast,
						(self pathClass from: (self trimRelativePath: aRelativePath)))].
	^ (self isNonRelative: aBasePath)
		ifTrue: [fullPathString copyWithFirst: self pathSeparator]
		ifFalse: [fullPathString].