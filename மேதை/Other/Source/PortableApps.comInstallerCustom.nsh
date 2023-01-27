!macro CustomCodePostInstall
	${If} ${FileExists} "$INSTDIR\Data\settings\gtkrc"
	${AndIfNot} ${FileExists} "$INSTDIR\Data\settings\gtk2\*.*"
		CreateDirectory "$INSTDIR\Data\settings\gtk2"
		CreateDirectory "$INSTDIR\Data\settings\gtk3"
		Rename "$INSTDIR\Data\settings\gtkrc" "$INSTDIR\Data\settings\gtk2\gtkrc"
	${EndIf}
!macroend