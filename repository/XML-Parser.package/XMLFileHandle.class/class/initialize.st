class initialization
initialize
	"self initialize"

	"a class variable so it's shared by all subclasses"
	XMLDocumentFileExtensions :=
		Set withAll: "avoid newFrom: for GS portability"
			#('atom' "Atom Syndication Format"
				'dbk' "DocBook XML"
				'docm' "Office Open XML Document"
				'docx' "Office Open XML Document"
				'pptm' "Office Open XML Presentation"
				'pptx' "Office Open XML Presentation"
				'rdf' "Resource Description Framework"
				'rss' "Rich Site Summary"
				'svg' "Scalable Vector Graphics"
				'xbel' "XML Bookmark Exchange Language"
				'xfd' "Extensible Forms Description Language"
				'xfdl' "Extensible Forms Description Language"
				'xhtml'
				'xlsm' "Office Open XML Workbook"
				'xlsx' "Office Open XML Workbook"
				'xml'
				'xsd' "XML Schema Definition"
				'xspf' "XML Shareable Playlist Format"
				'xul') "XML User Interface Language"