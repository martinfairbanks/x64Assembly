# x64Assembly
 
How to setup a visual studio project for assembly coding:
    1. Create a new prject.
    2. Right click on project and choose Build Dependencies -> build customizations and choose masm.
    3. If you don't want a cpp file -> Right click on project and choose Properties>Linker>Advanced and set 'Entry Point' to the function you want to be the entry point(e.g. main).

Start the MASM compiler from the terminal:
	
    ml64 test.asm /link /subsystem:console /entry:main
	ml64 test.asm /link /subsystem:windows /defaultlib:kernel32.lib /defaultlib:user32.lib /entry:main
