set pyscript=__pyscript

set here=%~dp0
set thispath=%here:~0,-1%
call "%thispath%\config\config.cmd"
IF exist "%thispath%\config\env.cmd" (
	call "%thispath%\config\env.cmd"
)
cd /d %thispath%\%pyfolder%\envs\%pyenv%_%pyver%
python "%thispath%\apps\%pyscript%"
