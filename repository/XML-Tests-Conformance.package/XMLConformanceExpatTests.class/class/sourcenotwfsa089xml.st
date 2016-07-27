xml source
sourcenotwfsa089xml
	"Source file: xmltest/not-wf/sa/089.xml"

	^ '<!DOCTYPE doc [
<!ENTITY % foo SYSTEM "foo.xml" NDATA bar>
]>
<doc></doc>
'