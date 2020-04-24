## Git and Ruby

**SOLO** si ya tenés:

- [Ruby](https://www.ruby-lang.org/en/documentation/installation) instalado (escribí `ruby --version` en tu consola/terminal. Te debería devolver la versión >= 2.2)
- [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) instalado (`git --version` debería ser >= 1.7)
- un [perfil en GitHub](https://github.com/join)
- conocimiento previo sobre programación

podes clonar este repositorio en tu computadora y buscar las actualizaciones posteriores a cada sessión:

Primero, hace una copia (fork) the este repositorio a tu perfil de GitHub.

![](https://github.com/sbuffose/programming4everybody/raw/master/images/fork.png)

Then, open your terminal and run the following commands one at a time (always read the comments carefully, they're there for a reason! 👀):

```sh
# A HACER: cambiar "tu-usuario-de-github" por tu usuario real
GITHUB_USERNAME="tu-usuario-de-github"

# 1. Crear una carpeta nueva donde guardar tus proyectos personales:
[ ! -d ~/code ] && mkdir ~/code
[ ! -d ~/code/$GITHUB_USERNAME ] && mkdir ~/code/$GITHUB_USERNAME
cd ~/code/$GITHUB_USERNAME

# 2. Cloná el repositorio de tu GitHub y conectalo al de @sbuffose (ejecutar esto SOLO UNA VEZ):
git clone https://github.com/$GITHUB_USERNAME/programming4everybody.git
cd programming4everybody
git remote add upstream https://github.com/sbuffose/programming4everybody.git
git fetch --all
git reset --hard upstream/master

# 3. Abrí tu repositorio en tu editor favorito:
atom . # or `open -a Atom .`
subl . # or `open -a "Sublime Text" .`
code . # or `open -a "Visual Studio Code" .`
```

Busca nuestro código de los webinars, y jugá en la carpeta de `test` . Podés ejecutar los archivos en tu terminal (consola) escribiendo `ruby test/a_test_file.rb`, o entrar en el "playground" escribiendo `irb` (Ruby Interactive Console - espacio para jugar con Ruby).

Luego de cada sessión, podés obtener lo último actualizado usando:

```sh
git fetch --all
git reset --hard upstream/master
```


## [AVANZADO] Configuración de la terminal para realizar el Bootcamp

**¡CUIDADO!** Esta configuración esta pensada para hacer junto a un profesor de [Le Wagon](https://www.lewagon.com/buenos-aires):
