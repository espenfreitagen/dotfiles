#-----------------------------------------------------------------------------------------------
# VENV
#-----------------------------------------------------------------------------------------------
venvme() {
  local venv_dir=".venv"

  if [ ! -d "$venv_dir" ]; then
    echo "Creating virtual environment in $PWD/$venv_dir"
    python -m venv "$venv_dir" || { echo "Failed to create venv"; return 1; }
  fi

  if [ -f "$venv_dir/bin/activate" ]; then
    source "$venv_dir/bin/activate"
    echo "Activated venv: $venv_dir"
  else
    echo "Activation script not found!"
    return 1
  fi
}
