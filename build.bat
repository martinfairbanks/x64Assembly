@echo off
pushd build
    ml64 ../code/hello_world_console.asm /link /subsystem:console /defaultlib:kernel32.lib /entry:main
	REM ml64 test.asm /link /subsystem:windows /defaultlib:kernel32.lib /defaultlib:user32.lib /entry:main
popd


