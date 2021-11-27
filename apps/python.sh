scoop install python
regedit.exe //S "$DEFAULTS_HOME/scoop/apps/python/current/install-pep-514.reg"

pip install --upgrade pip
python3 -m pip install --user pipx
python3 -m pipx ensurepath

pipx install jrnl