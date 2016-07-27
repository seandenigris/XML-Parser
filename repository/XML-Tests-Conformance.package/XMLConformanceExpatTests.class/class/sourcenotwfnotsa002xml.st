xml source
sourcenotwfnotsa002xml
	"Source file: xmltest/not-wf/not-sa/002.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (#PCDATA)>
<!ENTITY % e "<?xml version=''1.0'' encoding=''UTF-8''?>">
%e;
]>
<doc></doc>'