# Pythonでのテスト実施
alias pytest='oj t -c "python3 main.py" -d ./tests/'
# PyPy3でのテスト実施
alias pypytest='oj t -c "pypy3 main.py" -d ./tests/'

# Pythonでの解答提出
alias sbpy='acc s main.py'
# PyPy3での解答提出
alias sbpypy='acc s main.py -- --guess-python-interpreter pypy'