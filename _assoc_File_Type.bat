@echo off
chcp 65001
setlocal enabledelayedexpansion
cd /d %~dp0
rem --------------------------------------------------------------------------------
set "__APP_PATH_SEARCH=%~dp0..\..\"
set "OUTPUT_file=_Search_PATH_output.txt"
set "ICON_file_Path=%cd%\_ico"
rem --------------------------------------------------------------------------------
rem УДАЛЯЕМЫЕ ПРОГРАММЫ - нужно найти их ProgID KMPlayer.jpg
set "CLEAN_SEARCH_APP="KMPlayer" "Imagine" "mplayerc" "XMPlay" "PotPlayerMini64" "VLC" "Honeyview" "nomacs" "ImageGlass.AssocFile" "MicrosoftEdgeUpdate""
set "REG_KEY="HKEY_CLASSES_ROOT" "HKEY_CURRENT_USER\SOFTWARE" "HKEY_LOCAL_MACHINE\SOFTWARE\Classes" "HKEY_CURRENT_USER\SOFTWARE\Classes""

rem ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓

set "app-SQLite=SQLiteBrowser"
set "ico-SQLite=e4cd564e"
set "ext-SQLite=db db-journal db3 sqlite sqlite3"
rem --------------------------------------
set "app-uTorrent=uTorrent"
set "ext-uTorrent=torrent"
rem --------------------------------------
set "app-APK=apk_Info"
set "ext-APK=apk"
rem --------------------------------------
rem set "app-ZIP=7zFM"
rem set "ico-ZIP=e0bd9f09"
rem set "ext-ZIP=7z 7zip ace arj ashdisc b5i b5t b6i b6t bif bwi bwt bz2 c2d cab ccd cdi cif cpio crx daa dao deb dmg dsf dvd fcd flp gcd gi gz gzip hfs ima img iso isz itz ixa izp jar lcd lha lzh md1 mdf mds mdz ncd nrg nsis p01 paq p2i pdi r16 r32 rar rawr rif rpm s3z scatpack swm tao tar taz timg uif VaporCD vc4 vcd vdi wim wsz xa xmd xmf xmz xpi xz zip"

rem --------------------------------------------------------------------------------



rem     ▓▓▓▓▓▓▓▓   ▓▓▓▓▓▓▓   ▓▓▓▓▓▓
rem     ▓▓     ▓▓ ▓▓     ▓▓ ▓▓    ▓▓
rem     ▓▓     ▓▓ ▓▓     ▓▓ ▓▓
rem     ▓▓     ▓▓ ▓▓     ▓▓ ▓▓
rem     ▓▓     ▓▓ ▓▓     ▓▓ ▓▓
rem     ▓▓     ▓▓ ▓▓     ▓▓ ▓▓    ▓▓
rem     ▓▓▓▓▓▓▓▓   ▓▓▓▓▓▓▓   ▓▓▓▓▓▓



set "app-Markdown=ghostwriter"
set "ext-Markdown=mak markdn markdown md mdown mdtext mdtxt mdwn mk mkd mkdn rmd"
rem --------------------------------------
set "app-DOC=Sumatra_PDF"
set "ext-DOC=pdf fb2 djvu epub mobi cbr cbz"

rem --------------------------------------
set "app-DOC=CHM_Viewer"
set "ext-DOC=chm"
rem --------------------------------------
set "app-Exel=PlanMaker"
set "ico-Exel=21845e54"
set "ext-Exel=csv dbf dif pmd pmdx pmv pmvx pmw prn sdc slk xls xlsm xlsx xlt xltm xltx"
rem ___
set "app-Presentations=Presentations"
set "ico-Presentations=6bf70dfd"
set "ext-presentations=pot potm potx pps ppsm ppsx ppt pptm pptx prd prdx prs prsx prv prvx"
rem ___
set "app-Word=TextMaker"
set "ico-Word=5f06ad9a"
set "ext-Word=doc docm docx dot dotm dotx odt olt otd ott psw pwd sxw tmd tmdx tmv tmvx"
set "ext-Word_sysReg=odtfile docxfile Wordpad.Document.1"
rem --------------------------------------------------------------------------------



rem     ▓▓▓▓ ▓▓     ▓▓  ▓▓▓▓▓▓
rem      ▓▓  ▓▓▓   ▓▓▓ ▓▓    ▓▓
rem      ▓▓  ▓▓▓▓ ▓▓▓▓ ▓▓
rem      ▓▓  ▓▓ ▓▓▓ ▓▓ ▓▓   ▓▓▓▓
rem      ▓▓  ▓▓     ▓▓ ▓▓    ▓▓
rem      ▓▓  ▓▓     ▓▓ ▓▓    ▓▓
rem     ▓▓▓▓ ▓▓     ▓▓  ▓▓▓▓▓▓



set "app-3D=f3d"
set "ico-3D=b2b84b43"
set "ext-3D=3ds 3mf abc brep cxf dae dcm dwfx dwg dxf e ex2 exo fbx g glb gltf gml iges igs jww lff mha mhd nhrd nrrd obj off pcp ply pts rfa skm step stl stp tpr usd vdb vti vtk vtm vtp vtr vts vtu wrl x xbf"
rem --------------------------------------------------------------------------------
set "app-ICL=Greenfish_Icon_Editor"
set "ext-ICL=icl il icns icn nil"
rem --------------------------------------
set "app-HDRI=Sphero_Viewer_HDR"
set "ico-HDRI=faa0f83d"
set "ext-HDRI=hdr"
rem --------------------------------------
set "app-PureRef=PureRef"
set "ext-PureRef=pur"
rem --------------------------------------
set "app-ImageGlass=ImageGlass"
set "ico-ImageGlass=5833fa54"
set "ext-ImageGlass=tga tif tiff dds psd 8bps psdt psdx ai ifx"
set "ext-ImageGlass____1=exr"
rem --------------------------------------
set "app-qView=qView"
set "ico-qView=68d1bd21"
set "ext-ImageGlass____2=svg svgz"
rem --------------------------------------------------------------------------------
set "app-HoneyView=HoneyView"
set "ico-HoneyView=3ed25641"
set "ext-HoneyView=fig sketch kra"
set "ext-HoneyView____1=gif"
set "ext-HoneyView____2=png png~ apng"
set "ext-HoneyView____3=j2c j2k jbg jbig jfif jp2 jpc jpe jpeg jpeg~ jpf jpg jpg~ jpg2 jpm jps jpx jxl jxr"
set "ext-HoneyView____4=3fr abr aco adf ai3 ai4 ai5 ai6 ai7 ai8 anm ari arq arw ase avif avifs b64 bay bmp bmq bng bpg braw btf bw cap cb7 cbt ccx cdr cdt cel cin cine clp cmx colors cr2 cr3 crw cs1 cut dc2 dc3 dcr dcs dcx dib dicom dng dps dpx drf drif dxo egg eip emf eps epsf epsp erf exif fax fff fgx fido fl3 gbr gfi gfie  gih gpl gpr hdp heic heics heif heifs hej2 hv3 hv3ac ia iff iiq k25 kc2 kdc kmz kpp krz lbm lbmp macp mbm mdc mef mfw mng mos mpo mrw mxr nef nrw obm ora orf oxo pal pam pat pbm pcc pcd pcl pclx pct pcx pdd pdn pdp pef pfi pfs pfv pgm pic pict plt pnm pns ppm prc ps psb psp ptx pxn pxo pxr qoi qtk r3d r8 raf ras raw rdc rgb rgba rgbe rla rle roh rpf rsc rsrc rw2 rwl rwz sdpx sgi spr sr2 srf srw sti sxr tdi tf8 tpic tres tub u3d ugoira vbr vbx vda vec vst wap wbm wbmp wdp webp win wmf wpg x3f xbm xcf xpm xwd xyze"
set "ext-HoneyView_sysReg=PhotoViewer.FileAssoc.Bitmap PhotoViewer.FileAssoc.Gif PhotoViewer.FileAssoc.JFIF PhotoViewer.FileAssoc.Jpeg PhotoViewer.FileAssoc.Png PhotoViewer.FileAssoc.Tiff PhotoViewer.FileAssoc.Wdp TIFImage.Document"
rem --------------------------------------



rem     ▓▓▓▓▓▓▓▓ ▓▓▓▓▓▓▓▓ ▓▓     ▓▓ ▓▓▓▓▓▓▓▓
rem        ▓▓    ▓▓        ▓▓   ▓▓     ▓▓
rem        ▓▓    ▓▓         ▓▓ ▓▓      ▓▓
rem        ▓▓    ▓▓▓▓▓▓      ▓▓▓       ▓▓
rem        ▓▓    ▓▓         ▓▓ ▓▓      ▓▓
rem        ▓▓    ▓▓        ▓▓   ▓▓     ▓▓
rem        ▓▓    ▓▓▓▓▓▓▓▓ ▓▓     ▓▓    ▓▓



set "app-TEXT=AkelPad"
set "ico-TEXT=4f9e5739"
set "ext-TEXT=b4j bar bxd cdxml cfg ckpt coder conf config configs copy dat desktop dic echo fav gitignore hlsl hmg inf inf_loc ini lexx lng log mfl mof mtl nfo old opt pcfg prefs prev properties qml rex rfs rst rtf safetensors scp text tic tmp txt xbs"
rem __
set "ext-TEXT_sysReg=rtffile Unknown Undecided textfile zapfile txtfile scriptletfile inifile inffile"
rem добавить в FreeCommaner вручную - AUTHORS LICENSE NOTICE METADATA Preferences LOG

rem --------------------------------------------------------------------------------



rem      ▓▓▓▓▓▓   ▓▓▓▓▓▓▓  ▓▓▓▓▓▓▓▓  ▓▓▓▓▓▓▓▓
rem     ▓▓    ▓▓ ▓▓     ▓▓ ▓▓     ▓▓ ▓▓
rem     ▓▓       ▓▓     ▓▓ ▓▓     ▓▓ ▓▓
rem     ▓▓       ▓▓     ▓▓ ▓▓     ▓▓ ▓▓▓▓▓▓
rem     ▓▓       ▓▓     ▓▓ ▓▓     ▓▓ ▓▓
rem     ▓▓    ▓▓ ▓▓     ▓▓ ▓▓     ▓▓ ▓▓
rem      ▓▓▓▓▓▓   ▓▓▓▓▓▓▓  ▓▓▓▓▓▓▓▓  ▓▓▓▓▓▓▓▓


set "app-Code=sublime_text"
set "ico-Code=2b739864"
set "ext-Code=am as ash asp aspx au3 bash bash_aliases bash_completions bash_functions bash_login bash_logout bash_profile bash_variables bashrc bsh bson c cc cgi cl cls cmake cpp cpy cs csh cu cxx ddl diff dml dpr dtd dtml dtx eac ebuild eclass editorconfig eecompare eeproj eesln eesnip enaml erb esy f f03 f08 f2k f77 f90 f95 for gd gitattributes gitconfig gitmodules gnumakefile gyp gypi h hh hhc hhk hpp htaccess htc hxx in inc inl ino ins ipy ipynb jav java jl js jsee jsm json json5 jsonc jsp jsx lex liquid lock ltx lua m mac make makefile manifest min mjs mm mx nsh nsi nt ocamlmakefile opml osx pas patch php php3 php4 php5 php7 phps phpt phtml pipfile pkgbuild pl plx pm po pro profile psd1 psm1 pxd pxi py py3 pyd pyi pyw pyx qt rake rb rc rdf re rej rest rhtml rpm rpy rss sconscript sconstruct session sh snakefile sql sty t tex textile textmate_init tld ui vpy wer wscript xaml xml xps xsd xsl xslt yaml yml zlogin zlogout zprofile zsh zshenv zshrc"

set "ext-Code____1=scss css map"
set "ext-Code____2=sublime-build sublime-color-scheme sublime-commands sublime-completions sublime-keymap sublime-macro sublime-menu sublime-mousemap sublime-project sublime-settings sublime-syntax sublime-theme"

set "app-res=sublime_text"
set "ico-res=91fbf328"
set "ext-res=res"

rem --------------------------------------------------------------------------------



rem     ▓▓▓▓▓▓▓▓  ▓▓          ▓▓▓    ▓▓    ▓▓ ▓▓▓▓▓▓▓▓ ▓▓▓▓▓▓▓▓
rem     ▓▓     ▓▓ ▓▓         ▓▓ ▓▓    ▓▓  ▓▓  ▓▓       ▓▓     ▓▓
rem     ▓▓     ▓▓ ▓▓        ▓▓   ▓▓    ▓▓▓▓   ▓▓       ▓▓     ▓▓
rem     ▓▓▓▓▓▓▓▓  ▓▓       ▓▓     ▓▓    ▓▓    ▓▓▓▓▓▓   ▓▓▓▓▓▓▓▓
rem     ▓▓        ▓▓       ▓▓▓▓▓▓▓▓▓    ▓▓    ▓▓       ▓▓   ▓▓
rem     ▓▓        ▓▓       ▓▓     ▓▓    ▓▓    ▓▓       ▓▓    ▓▓
rem     ▓▓        ▓▓▓▓▓▓▓▓ ▓▓     ▓▓    ▓▓    ▓▓▓▓▓▓▓▓ ▓▓     ▓▓



set "app-SUBTEXT=AkelPad"
set "ico-SUBTEXT=37f69b55"
set "ext-SUBTEXT=ass idx lrc mks rt s2k smi smil srt ssa ssf sub sup usf"
rem --------------------------------------
set "app-PLAYLIST=AIMP"
set "ico-PLAYLIST=6012066a"
set "ext-PLAYLIST=asx b4s bdmv cue dpl fpl ifo kpl m3u m3u8 mpc_lst mpcpl mpl mpls pls sdp vlc wax wmx wpl wvx xspf"
rem --------------------------------------
set "app-Audio=qmmp"
set "ico-Audio=a107f113"
set "ext-Audio=aa3 aac ac3 aif aifc aiff alac amr aob ape apl at3 au awb cda dff dsf dts dtshd dtsma eac3 ec3 fla flac it itz kar m1a m2a m4a m4r mdz mid midi mka mlp mo3 mod mp1 mp2 mp3 mpa mpc mpga mtm ofr ofs oga ogg oma opus ra rmi s3m s3z snd spx tak tta umx w64 wav weba wma wv xm xmz"
rem --------------------------------------
set "app-Video=PotPlayerMini64"
set "ico-Video=6d0b9422"
set "ext-Video=264 265 3g2 3ga 3gp 3gp2 3gpp amv asf avi bik divx dpg dsa dsm dss dsv dvr-ms evo f4v flc fli flic flv h264 h265 hdmov hevc hm10 ismv ivf k3g m1v m2p m2t m2ts m2v m4b m4p m4v mk3d mkv mov mp2v mp4 mp4v mpe mpeg mpg mpv2 mpv4 mts mxf nsv ogm ogv pva ram rec rm rmm rmvb roq sfd smk ssif tp trp ts vc1 vob webm wm wmp wmv wtv y4m"
rem __
set "ext-Video____1=669 8svx a52 abk adt adts afc amb amd amf avs ay bt bwf c64 caf crf dav dbm digi drc dsdiff dtm dv emod far flx fnk gbs gdm gr gtk gvi gxf gym hes hlv hsc imf itgz itr j2b jc kss liq m15 m5p mdbz mdgz mdl mdr med mfp mgt mp+ mpeg1 mpeg2 mpeg4 mpp mpv mqv mtn mtv mus mxg nsa nsf nsfe nuv ogx okt P00 part prg psm qcp rad rf64 rpl rtm rv s3gz s3r sap sf sfx shn sid smp spc sph stim stm str stx svx swf td thd thp tod tts txd ult vcd vfw vgm vgz voc vp8 vqf vro wave wow xa xesc xmgz xmr"

rem --------------------------------------------------------------------------------


rem ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓

set "ARRAY_FOUND_APPLICATIONS="
for /f "tokens=2 delims=-=" %%a in ('set app-') do (
	set "ARRAY_FOUND_APPLICATIONS=!ARRAY_FOUND_APPLICATIONS! "%%a""
)

rem ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓













:start_run

cls
echo   !ARRAY_FOUND_APPLICATIONS!
echo.
echo.
echo    ▓▓     ▓▓    ▓▓▓▓▓▓▓▓    ▓▓    ▓▓    ▓▓     ▓▓
echo    ▓▓▓   ▓▓▓    ▓▓          ▓▓▓   ▓▓    ▓▓     ▓▓
echo    ▓▓▓▓ ▓▓▓▓    ▓▓          ▓▓▓▓  ▓▓    ▓▓     ▓▓
echo    ▓▓ ▓▓▓ ▓▓    ▓▓▓▓▓▓      ▓▓ ▓▓ ▓▓    ▓▓     ▓▓
echo    ▓▓     ▓▓    ▓▓          ▓▓  ▓▓▓▓    ▓▓     ▓▓
echo    ▓▓     ▓▓    ▓▓          ▓▓   ▓▓▓    ▓▓     ▓▓
echo    ▓▓     ▓▓    ▓▓▓▓▓▓▓▓    ▓▓    ▓▓     ▓▓▓▓▓▓▓
echo.
echo.
echo   —————————————————————————————————————————————————————————————
echo.
echo     [1]  Найти пути программ
echo.
echo     [2]  Зарегистрировать
echo.
echo     [3]  Удалить регистрацию
echo.
echo     [4]  Очистить ассоциации других программ
echo.
echo   —————————————————————————————————————————————————————————————
echo.
set /p choice=".   Запустить вариант "
CALL :process_choice !choice!
goto :start_run

:process_choice
cls
if "%~1"=="1" CALL :SearchBlock
if "%~1"=="2" CALL :RegistrBlock
if "%~1"=="3" CALL :DeleteBlock
if "%~1"=="4" CALL :CleanBlock
goto :start_run
exit /b
















rem Найти пути Программ
:SearchBlock
cls
echo.
echo.
echo     ▓▓▓▓▓▓     ▓▓▓▓▓▓▓▓       ▓▓▓       ▓▓▓▓▓▓▓▓      ▓▓▓▓▓▓     ▓▓     ▓▓
echo    ▓▓    ▓▓    ▓▓            ▓▓ ▓▓      ▓▓     ▓▓    ▓▓    ▓▓    ▓▓     ▓▓
echo    ▓▓          ▓▓           ▓▓   ▓▓     ▓▓     ▓▓    ▓▓          ▓▓     ▓▓
echo     ▓▓▓▓▓▓     ▓▓▓▓▓▓      ▓▓     ▓▓    ▓▓▓▓▓▓▓▓     ▓▓          ▓▓▓▓▓▓▓▓▓
echo          ▓▓    ▓▓          ▓▓▓▓▓▓▓▓▓    ▓▓   ▓▓      ▓▓          ▓▓     ▓▓
echo    ▓▓    ▓▓    ▓▓          ▓▓     ▓▓    ▓▓    ▓▓     ▓▓    ▓▓    ▓▓     ▓▓
echo     ▓▓▓▓▓▓     ▓▓▓▓▓▓▓▓    ▓▓     ▓▓    ▓▓     ▓▓     ▓▓▓▓▓▓     ▓▓     ▓▓
echo.
echo.


if exist "%OUTPUT_file%" ( del "%OUTPUT_file%" )
if exist "%OUTPUT_file%" ( echo ▓▓▓ ERROR  файл не удалён  %OUTPUT_file% & pause )
type nul > %OUTPUT_file%


set "index=1"
for %%a in (!ARRAY_FOUND_APPLICATIONS!) do (

	set "app_exe=!app-%%~a!.exe" & rem AkelPad.exe

	for /r "%__APP_PATH_SEARCH%" %%A in (*.exe) do (

		set "app_input_full_path=%%~fA" & rem D:\_APP\AkelPad\AkelPad.exe
		set "app_input_exe=%%~nxA" & rem AkelPad.exe

		if /I "!app_exe!"=="!app_input_exe!" (
			find /I "!app_input_full_path!" "%OUTPUT_file%" >nul
			if errorlevel 1 (
				echo !app_input_full_path!>>"%OUTPUT_file%"
				echo      !app_exe!
				set /a index+=1
			)
		)
	)
)

echo.
echo.

if not exist "%OUTPUT_file%" ( echo  ФАЙЛ %OUTPUT_file% НЕ БЫЛ СОЗДАН! & pause & exit /b )
for /f "delims=" %%a in (%OUTPUT_file%) do ( echo      %%a )

echo.
echo.

pause
goto start_run
exit /b





















:DeleteBlock
cls
echo.
echo.
echo    ▓▓▓▓▓▓▓▓     ▓▓▓▓▓▓▓▓    ▓▓
echo    ▓▓     ▓▓    ▓▓          ▓▓
echo    ▓▓     ▓▓    ▓▓          ▓▓
echo    ▓▓     ▓▓    ▓▓▓▓▓▓      ▓▓
echo    ▓▓     ▓▓    ▓▓          ▓▓
echo    ▓▓     ▓▓    ▓▓          ▓▓
echo    ▓▓▓▓▓▓▓▓     ▓▓▓▓▓▓▓▓    ▓▓▓▓▓▓▓▓
echo.
echo.

rem "3D" "APK" "Audio" "Code" "DOC" "Exel" "HDRI" "HoneyView"
for %%a in (!ARRAY_FOUND_APPLICATIONS!) do (

	echo.
	echo ----------------------------------------------

	set "app_category=%%~a"       & rem TEXT
	set "app_exe=!app-%%~a!.exe"  & rem AkelPad.exe
	set "ico_app=!ico-%%~a!.ico"  & rem ico_AkelPad.ico
  set "AppViewer_category=AppViewer_!app_category!" & rem AppViewer_TEXT

  echo  !app_exe!

  reg query HKEY_CLASSES_ROOT\!AppViewer_category!  >nul 2>nul
  if !errorlevel! equ 0 (
	ftype !AppViewer_category!=
		reg delete HKEY_CLASSES_ROOT\!AppViewer_category! /f  >nul 2>nul
	)

	reg query HKEY_CURRENT_USER\SOFTWARE\Classes\Applications\!app_exe!  >nul 2>nul
	if !errorlevel! equ 0 (
		reg delete "HKEY_CURRENT_USER\SOFTWARE\Classes\Applications\!app_exe!" /f  >nul 2>nul
	)

	echo.

	REM ----------------------------------------------

	set "ext_app=ext-!app_category!"
	CALL set "ext_app=%%!ext_app!%%"

	echo  ext-!app_category!

	set "ext_app_export_list="
	for %%n in (!ext_app!) do (
		CALL :REG_KEY %%n
		set "ext_app_export_list=!ext_app_export_list! %%n"
	)
	echo !ext_app_export_list!


	REM ----------------------------------------------


	for /f "tokens=2 delims=____=" %%a in ('set ext-!app_category!____ 2^>nul' ) do (

		set "ext_app_count=ext-!app_category!____%%a"
		CALL set "ext_app_value=%%!ext_app_count!%%" & rem ext-APP1____2

		echo.
		echo  ext-!app_category!____%%a

		set "ext_app_export_list="
		for %%n in (!ext_app_value!) do (
			CALL :REG_KEY %%n
			set "ext_app_export_list=!ext_app_export_list! %%n"
		)
		echo !ext_app_export_list!

	)


	REM ----------------------------------------------



	rem Проверка и выполнение _sysReg
	if defined ext-!app_category!_sysReg (
		echo.

		set "ext_app_count_sysReg=ext-!app_category!_sysReg"
		CALL set "ext_app_value_sysReg=%%!ext_app_count_sysReg!%%"  & rem ext-APP1____sysReg

		echo  ext-!app_category!_sysReg

		set "ext_app_export_list="
		for %%n in (!ext_app_value_sysReg!) do (
			ftype %%n=
			reg delete "HKEY_CLASSES_ROOT\%%n" /f >nul 2>nul
			set "ext_app_export_list=!ext_app_export_list! %%n"
		)
		echo !ext_app_export_list!
	)


)
echo.
echo.

rem Очищаю базу иконок IconCache.db
ie4uinit.exe -ClearIconCache
ie4uinit.exe -show

pause
goto start_run
exit /b

:REG_KEY
ASSOC .%1=
reg delete "HKEY_CLASSES_ROOT\.%1" /f >nul 2>nul
reg delete "HKEY_CLASSES_ROOT\SystemFileAssociations\.%1" /f >nul 2>nul
reg delete "HKEY_CURRENT_USER\SOFTWARE\Classes\.%1" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Portable Devices\FormatMap\.%1" /f >nul 2>nul
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.%1" /f >nul 2>nul
exit /b



















:CleanBlock
cls
echo.
echo.
echo     ▓▓▓▓▓▓     ▓▓          ▓▓▓▓▓▓▓▓       ▓▓▓       ▓▓    ▓▓
echo    ▓▓    ▓▓    ▓▓          ▓▓            ▓▓ ▓▓      ▓▓▓   ▓▓
echo    ▓▓          ▓▓          ▓▓           ▓▓   ▓▓     ▓▓▓▓  ▓▓
echo    ▓▓          ▓▓          ▓▓▓▓▓▓      ▓▓     ▓▓    ▓▓ ▓▓ ▓▓
echo    ▓▓          ▓▓          ▓▓          ▓▓▓▓▓▓▓▓▓    ▓▓  ▓▓▓▓
echo    ▓▓    ▓▓    ▓▓          ▓▓          ▓▓     ▓▓    ▓▓   ▓▓▓
echo     ▓▓▓▓▓▓     ▓▓▓▓▓▓▓▓    ▓▓▓▓▓▓▓▓    ▓▓     ▓▓    ▓▓    ▓▓
echo.
echo.


for %%a in (%CLEAN_SEARCH_APP%) do (
	echo.
	echo ----------------------------------------------
	set "app_exe=%%~a"  & rem 1aaaa.exe


	reg query HKEY_CURRENT_USER\SOFTWARE\Classes\Applications\!app_exe!.exe  >nul 2>nul
	if !errorlevel! equ 0 ( reg delete "HKEY_CURRENT_USER\SOFTWARE\Classes\Applications\!app_exe!.exe" /f >nul 2>nul )

	reg query HKEY_CLASSES_ROOT\Applications\!app_exe!.exe  >nul 2>nul
	if !errorlevel! equ 0 ( reg delete "HKEY_CLASSES_ROOT\Applications\!app_exe!.exe" /f  >nul 2>nul )


	for %%n in (%REG_KEY%) do (
		set "REG_KEY_URL=%%~n"

		for /f "tokens=1* delims=." %%a in ('reg query "%%~n" /f "!app_exe!" /k 2^>nul') do (
			set "reg_key=%%a."
			set "reg_value=%%b"
			set "APP_reg_key_URL=%%a"

			rem Проверяем, что не пустое, прежде чем использовать ASSOC и FTYPE
			if defined %%b (
					ASSOC .%%b=
					ASSOC %%b=
					ftype .%%b=
					ftype !app_exe!.%%b=
			)

			reg query !REG_KEY_URL!\.  >nul 2>nul
			rem echo reg query !REG_KEY_URL!\.
			rem if !errorlevel! equ 0 ( echo 1111 есть   ) else (echo 22222 нету )
			if !errorlevel! neq 0 ( reg delete !REG_KEY_URL!\.!reg_value! /f  >nul 2>nul    )

			reg query !reg_key!!reg_value!  >nul 2>nul
			if !errorlevel! equ 0 ( reg delete "!reg_key!!reg_value!" /f  >nul 2>nul   )

			reg query !APP_reg_key_URL!  >nul 2>nul
			if !errorlevel! equ 0 ( reg delete !APP_reg_key_URL! /f  >nul 2>nul   )

		)
	)
)

echo.
echo.

rem Очищаю базу иконок IconCache.db
ie4uinit.exe -ClearIconCache
ie4uinit.exe -show
pause
goto start_run
exit /b

















:RegistrBlock
cls
echo.
echo.
echo    ▓▓▓▓▓▓▓▓     ▓▓▓▓▓▓▓▓     ▓▓▓▓▓▓      ▓▓▓▓     ▓▓▓▓▓▓     ▓▓▓▓▓▓▓▓    ▓▓▓▓▓▓▓▓
echo    ▓▓     ▓▓    ▓▓          ▓▓    ▓▓      ▓▓     ▓▓    ▓▓       ▓▓       ▓▓     ▓▓
echo    ▓▓     ▓▓    ▓▓          ▓▓            ▓▓     ▓▓             ▓▓       ▓▓     ▓▓
echo    ▓▓▓▓▓▓▓▓     ▓▓▓▓▓▓      ▓▓   ▓▓▓▓     ▓▓      ▓▓▓▓▓▓        ▓▓       ▓▓▓▓▓▓▓▓
echo    ▓▓   ▓▓      ▓▓          ▓▓    ▓▓      ▓▓           ▓▓       ▓▓       ▓▓   ▓▓
echo    ▓▓    ▓▓     ▓▓          ▓▓    ▓▓      ▓▓     ▓▓    ▓▓       ▓▓       ▓▓    ▓▓
echo    ▓▓     ▓▓    ▓▓▓▓▓▓▓▓     ▓▓▓▓▓▓      ▓▓▓▓     ▓▓▓▓▓▓        ▓▓       ▓▓     ▓▓
echo.
echo.

if not exist "%OUTPUT_file%" (	echo ▓▓▓ ERROR  ФАЙЛ НЕ НАЙДЕН & echo ▓▓▓ %OUTPUT_file% & pause & goto start_run & exit /b )

rem "3D" "APK" "Audio" "Code" "DOC" "Exel" "HDRI" "HoneyView"
for %%a in (!ARRAY_FOUND_APPLICATIONS!) do (
	echo ----------------------------------------------
	set "app_category=%%~a"       & rem TEXT
	set "app_exe=!app-%%~a!.exe"  & rem AkelPad.exe
	set "ico_app=!ico-%%~a!.ico"  & rem ico_AkelPad.ico
	set "AppViewer_category=AppViewer_!app_category!" & rem AppViewer_TEXT

	rem ЧИТАЕМ ФАЙЛ ==================================
	CALL :OUTPUT_FILE_GET_DATA !app_exe!

	if /i "!app_input_exe!"=="!app_exe!" (

		if defined ico-!app_category! ( echo    !app_category!  —  !app_exe! — !ico_app! ) else (echo    !app_category!  —  !app_exe!)

		REM ----------------------------------------------

		CALL :REGISTR_APP_REG_ADD_AppViewer_category !AppViewer_category! !app_input_full_path!
		set "ext_app=ext-!app_category!"
		CALL set "ext_app=%%!ext_app!%%"
		for %%n in (!ext_app!) do ( CALL :REGISTR_APP_REG_ADD_ext_app %%n !AppViewer_category! !app_category! )

		REM ----------------------------------------------

		for /f "tokens=2 delims=____=" %%a in ('set ext-!app_category!____ 2^>nul') do (
			set "ext_app_count=ext-!app_category!____%%a"
			CALL set "ext_app_value=%%!ext_app_count!%%" & rem ext-APP1____2
			if defined ext_app_value ( for %%n in (!ext_app_value!) do ( CALL :REGISTR_APP_REG_ADD_ext_app %%n !AppViewer_category! !app_category! ) )
		)

		REM ----------------------------------------------

		if defined ext-!app_category!_sysReg (
			set "ext_app_count_sysReg=ext-!app_category!_sysReg"
			CALL set "ext_app_value_sysReg=%%!ext_app_count_sysReg!%%"  & rem ext-APP1____sysReg
			for %%f in (!ext_app_value_sysReg!) do ( CALL :REGISTR_APP_REG_ADD_AppViewer_category !AppViewer_category! !app_input_full_path! )
		)

		REM ----------------------------------------------

		rem для всех файлов программы
		if defined ico-!app_category! ( reg add "HKEY_CLASSES_ROOT\!AppViewer_category!\DefaultIcon" /ve /t REG_SZ /d "!ICON_file_Path!\!ico_app!" /f  >nul 2>nul )

	)
)

echo.
echo.
rem Очищаю базу иконок IconCache.db
ie4uinit.exe -ClearIconCache
ie4uinit.exe -show



pause
goto start_run
exit /b



:REGISTR_APP_REG_ADD_ext_app
reg add "HKEY_CLASSES_ROOT\.%1" /ve /d "%2" /f  >nul 2>nul
reg add "HKEY_CLASSES_ROOT\SystemFileAssociations\.%1" /ve /d "%2" /f  >nul 2>nul

rem для конкретного файла
if defined ico-%3 (
	reg add "HKEY_CLASSES_ROOT\.%1\DefaultIcon" /ve /t REG_SZ /d "!ICON_file_Path!\!ico_app!" /f  >nul 2>nul
	reg delete "HKEY_CURRENT_USER\SOFTWARE\Classes\.%1" /f  >nul 2>nul
)
exit /b

REM ----------------------------------------------

:REGISTR_APP_REG_ADD_AppViewer_category
reg add "HKEY_CLASSES_ROOT\%1\shell\open\command" /ve /d "\"%2\" \"%%1\"" /f  >nul 2>nul
exit /b

REM ----------------------------------------------

:OUTPUT_FILE_GET_DATA
for /f "delims=" %%a in ('findstr /I "%1" "%OUTPUT_file%"') do (

	set "app_input_full_path=%%~fa" & rem D:\_APP\AkelPad\AkelPad.exe
	set "app_input_folder=%%~dpa"   & rem D:\_APP\AkelPad
	set "app_input_exe=%%~nxa"      & rem AkelPad.exe
	set "app_name=%%~na"            & rem AkelPad

)
exit /b







endlocal
goto start_run
exit







exit