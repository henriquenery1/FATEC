import os
import shutil
import re

def copy_and_rename_files_with_new_name():
    new_name = input("Insira o seu nome para os arquivos: ")

    new_folder = "arquivos_renomeados"
    os.makedirs(new_folder, exist_ok=True)

    files = os.listdir()
    
    # Filtra apenas os arquivos que seguem o padrão "exXX.alg"
    exercise_files = [file for file in files if re.match(r'ex\d{2}\.alg', file)]

    for file in exercise_files:
        # Extrai o número do exercício do nome do arquivo
        ex_number = re.search(r'ex(\d{2})\.alg', file).group(1)

        new_file_name = f"ex{ex_number}_{new_name}.alg"

        shutil.copy(file, os.path.join(new_folder, new_file_name))

    print("Arquivos renomeados com sucesso.")

if __name__ == "__main__":
    copy_and_rename_files_with_new_name()
