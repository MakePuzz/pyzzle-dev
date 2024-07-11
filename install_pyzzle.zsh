echo "Installing pyzzle..."
pip install --no-build-isolation -e volume/pyzzle
pip install -e volume/puzzleimage

echo "Running tests..."
pytest volume/pyzzle

echo "サンプルプログラム:"
echo "python volume/pyzzle/example/main_cli.py volume/pyzzle/src/pyzzle/dict/animals.txt 15 15 -s 1 -e 5 --use_f --name 動物のなまえ"