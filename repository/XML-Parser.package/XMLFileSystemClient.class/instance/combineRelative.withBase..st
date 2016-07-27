paths
combineRelative: aRelativePath withBase: aBasePath

	^ (self isNonRelative: aRelativePath)
		ifTrue: [aRelativePath]
		ifFalse: [
			(self pathClass from: aBasePath) asFileReference isDirectory
				ifTrue: [
					self systemPathFrom:
						(self pathClass from: aBasePath) / (self trimRelativePath: aRelativePath)]
				ifFalse: [
					self systemPathFromSegments:
						(self pathClass from: aBasePath) segments allButLast,
							(self pathClass from: (self trimRelativePath: aRelativePath))]]