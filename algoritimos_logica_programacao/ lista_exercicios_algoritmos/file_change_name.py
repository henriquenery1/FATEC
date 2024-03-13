import os

def list_files():
    files = []
    files = os.system ("ls")
    name = input()
    for i in files:
        os.system(f"mv {i}_{name}")