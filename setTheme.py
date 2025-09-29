import os
from themes.themes import themes

print("")
print("+------------------------+")
print(f"|{'Temas:'.center(24)}|")
print("+------------------------+")
for n, t in enumerate(themes):
    s = f"| {n}: {t['name']}".ljust(25)
    print(f"{s}|")
print("+------------------------+")
print("")

chosen = int(input("Escolha um tema: "))

if not 0 <= chosen < len(themes):
    os.system("echo '\e[38;5;160mTema Indísponivel'")
    print("")
    exit()

file = "~/.config/i3/config"

def setTheme(chosen):
    for field, color in themes[chosen]["theme"].__dict__.items():
        s = "s/set\ \${0} .*/set\ \${0}\ {1}/".format(field, color)
        os.system("sed -i '{0}' {1}".format(s, file))
        os.system("i3-msg reload > /dev/null")
    
    print("")
    print(f"Tema {themes[chosen]['name']}")
    os.system("echo '\e[38;5;112mTema alterado'")
    print("")

setTheme(chosen)
