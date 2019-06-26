@set Config=%1
@if [%1] == [] set Config=Debug
@echo config == %Config%

@set PATH=%PATH%;%MINGW_BIN%

call cmake -B "build/MinGW Makefiles/%Config%/" -S . -G"MinGW Makefiles" -DCMAKE_BUILD_TYPE=%Config% -DCMAKE_VERBOSE_MAKEFILE=1

call cmake --build "build/MinGW Makefiles/%Config%/"

@pause