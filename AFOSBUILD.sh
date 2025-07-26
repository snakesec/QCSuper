rm -rf /opt/ANDRAX/qcsuper

PIPX_HOME=/opt/ANDRAX/pipx PIPX_BIN_DIR=/opt/ANDRAX/pipx/bin PIPX_MAN_DIR=/opt/ANDRAX/pipx/man /opt/ANDRAX/python3.13/bin/pipx install --force .

if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "Force local install... PASS!"
else
  # houston we have a problem
  exit 1
fi

ln -s /opt/ANDRAX/pipx/venvs/qcsuper/bin/qcsuper /opt/ANDRAX/bin/qcsuper

chown -R andrax:andrax /opt/ANDRAX/
