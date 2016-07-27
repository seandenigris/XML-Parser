paths
combineRelative: aRelativePath withBase: aBasePath
	| basePath fullPathString |

	(self isNonRelative: aRelativePath)
		ifTrue: [^ aRelativePath].

	(basePath := self pathClass from: aBasePath) asFileReference isDirectory
		ifTrue: [
			fullPathString :=
				self systemPathFrom: (basePath / (self trimRelativePath: aRelativePath))]
		ifFalse: [
			fullPathString :=
				self pathSeparator join:
					(basePath segments allButLast,
						(self pathClass from: (self trimRelativePath: aRelativePath)))].
	^ (self isNonRelative: aBasePath)
		ifTrue: [fullPathString copyWithFirst: self pathSeparator]
		ifFalse: [fullPathString].