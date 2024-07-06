echo "Installing pyzzle..."
pip install --no-build-isolation -e volume/pyzzle

echo "Running tests..."
pytest volume/pyzzle