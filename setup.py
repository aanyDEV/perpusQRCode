import os
import subprocess
from termcolor import colored as cl
import sys

#autolara by cukid

ev = '.env'
evx = '.env.example'
key = 'DB_DATABASE='
create = 'CREATE DATABASE IF NOT EXISTS'
user = 'root'
n = 'bukuqt'
my = f'mysql -u {user}'
mysl = f'{my} -e'
pws = ["powershell", "-Command"]
com = ["composer install", f"copy {evx} {ev}", "php artisan key:generate", "php artisan migrate", "php artisan serve"]
dir = os.getcwd()

def perintah(cmd):
    try:
        subprocess.run(cmd, shell=True, cwd=dir, check=True)
    except subprocess.CalledProcessError as e:
        print(cl(f"Terdapat kesalahan {e}\n","yellow"))

def mencarifileSQL(direktori="."):
    fileSQL = [file for file in os.listdir(direktori) if file.endswith('.sql')]
    return fileSQL

def ganti(xx, yy, zz):
    with open(xx, 'r') as file:
        lines = file.readlines()
    
    for i, line in enumerate(lines):
        if line.startswith(yy):
            lines[i] = f'{yy}{zz}\n'
    with open(xx, 'w') as file:
        file.writelines(lines)
try:
    perintah(com[0])
    perintah(com[1])
    ganti(ev, key, n)
    print(cl(f"Proses copy {ev} selesai","green"))
    dirPath = os.path.dirname(os.path.realpath(__file__))
    fileSQL = mencarifileSQL(dirPath)
    namaDB = fileSQL[0].split('.')
    com.append(f'{mysl} "{create} {namaDB[0]};"')
    perintah(com[5])
    print(cl("Sukses membuat database","green"))
    ganti(ev, key, namaDB[0])
    perintah(com[2])
    print(cl(f"Sukses generate key {ev}","green"))
    com.append(f'{my} {namaDB[0]} < {fileSQL[0]}')
    perintah(com[6])
    print(cl(f"Sukses import file {fileSQL[0]} ke database {namaDB[0]}","green"))
    perintah(com[3])
    print(cl("Sukses migrate db","green"))
    perintah(com[4])
except KeyboardInterrupt:
    sys.exit()