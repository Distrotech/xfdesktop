<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE xfdesktop-menu [
	<!ENTITY menu2 SYSTEM "menu2.xml">
]>

<!-- 
     Explanantion of XFce 4 menu file: 
     =================================
     Here we will try to explain the format of the menu file. Look at the
     actual menu below for the real examples.
-->

<!-- Obviously, this is how you make a comment ;-) -->

<!-- 

  + Everything is between exactly one pair of 
    <xfdesktop-menu></xfdesktop-menu> tags.

  + Applications:
    <app name="Name in menu" cmd="Command to run" term="no" visible="yes" />
    'term' determines if the program needs a terminal to run
    Only 'name' and 'cmd' are required.

  + Separators:
    <separator/>

  + Submenus:
    <menu name="Name in menu" visible="yes"></menu>
    Only 'name' is required.
    Between the menu tags you can define more applications, separators and 
    menus.

  + Titles
    <title name="Name in menu" />
    Creates an insensitive menu title
    
  + Including other files:
    Other files can be included by using an xml trick. This is a little bit
    complicated.
    First you have to define a so called entity in the file header. See above,
    where we define a 'menu2' entity to point to a "menu2.xml" file.
    Then you can use '&entityname;' anywhere in the menu file and it will be
    replaced with the contents of the file the entity points to.
    This can be useful for example if you make a script that generates a gnome
    menu and put it in a separate file.
    Beware the included file should NOT contain a xml header or
    <xfdektop-menu> tags!
    
-->
<xfdesktop-menu>
    <title name="Desktop Menu" visible="yes" />
    <separator/>
    <app name="Programma uitvoeren..." cmd="xfrun4"/>
    <separator/>
    <app name="Terminal" cmd="xfterm4" />
    <app name="Bestandsbeheer (xffm)" cmd="xffm"/>
    <app name="Web Browser" cmd="mozilla"/>
    <separator/>
    <menu name="Instellingen" visible="yes">
	<app name="Alle instellingen..." cmd="xfce-setting-show"/>
        <app name="Achtergrond..." cmd="xfce-setting-show backdrop"/>
<!-- 
        <app name="Background" cmd="xfce-setting-show backdrop"/>
	<app name="Workspaces" cmd="xfce-setting-show workspaces"/>
	<app name="File manager (xffm)" cmd="xfce-setting-show xffm"/>
	<app name="User interface (gtk+)" cmd="xfce-setting-show ui"/>
	<app name="Icon box" cmd="xfce-setting-show xfibx"/>
        <app name="Mouse" cmd="xfce-setting-show mouse"/>
        <app name="Taskbar" cmd="xfce-setting-show taskbar"/>
	<app name="Keyboard" cmd="xfce-setting-show keyboard"/>
	<app name="Window manager" cmd="xfce-setting-show xfwm4"/>
	<app name="Margins" cmd="xfce-setting-show xfwm_margins"/>
	<app name="Panel" cmd="xfce-setting-show xfce"/>
-->
    </menu>
    <separator/>
    <app name="Help" cmd="xfhelp4"/>
    <!-- <separator/> -->
    <!-- Set visible to yes to use this item.
      This will exit the desktop manager. If you also put 
      'exec xfdesktop' at the end of your ~/.xinitrc, this menu item can be
      used to exit the X session.
    -->
    <builtin name="Afsluiten" cmd="quit" visible="no"/>
    <!-- Example on how to include a file:
      1) declare an ENTITY in the DOCTYPE tag (see above)
      2) include entity in file: 
    -->
    <!--
    &menu2;
    -->
</xfdesktop-menu>

