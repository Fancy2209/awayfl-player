echo [32m Clones and links all AwayFL modules into a directory "@awayfl", and all and AwayJS modules into a directory "@awayjs" at the same level as the awayfl-player directory[0m
read -n 1 -s -r -p "Press any key to continue"
cd $(dirname "$0")
cd ..
cd ..

echo [32m Cloning "@awayjs" modules from Github[0m

mkdir @awayjs
cd @awayjs
git clone https://github.com/awayjs/core.git --depth=1 -b dev
git clone https://github.com/awayjs/graphics.git --depth=1 -b dev
git clone https://github.com/awayjs/scene.git --depth=1 -b dev
git clone https://github.com/Fancy2209/stage.git --depth=1 -b Stage3D
git clone https://github.com/awayjs/renderer.git --depth=1 -b dev
git clone https://github.com/awayjs/materials.git --depth=1 -b dev
git clone https://github.com/awayjs/view.git --depth=1 -b dev
git clone https://github.com/awayjs/arcade.git --depth=1 -b dev

echo [32m Checkout and link "@awayjs/core" module[0m
cd core
yarn
yarn link
cd ..

echo [32m Checkout and link "@awayjs/stage" module[0m
cd stage
yarn
yarn link
yarn link @awayjs/core
cd ..

echo [32m Checkout and link "@awayjs/view" module[0m
cd view
yarn
yarn link
yarn link @awayjs/core
yarn link @awayjs/stage
cd ..

echo [32m Checkout and link "@awayjs/renderer" module[0m
cd renderer
yarn
yarn link
yarn link @awayjs/core
yarn link @awayjs/stage
yarn link @awayjs/view
cd ..

echo [32m Checkout and link "@awayjs/graphics" module[0m
cd graphics
yarn
yarn link
yarn link @awayjs/core
yarn link @awayjs/stage
yarn link @awayjs/view
yarn link @awayjs/renderer
cd ..

echo [32m Checkout and link "@awayjs/materials" module[0m
cd materials
yarn
yarn link
yarn link @awayjs/core
yarn link @awayjs/stage
yarn link @awayjs/renderer
yarn link @awayjs/view
cd ..

echo [32m Checkout and link "@awayjs/scene" module[0m
cd scene
yarn
yarn link
yarn link @awayjs/core
yarn link @awayjs/stage
yarn link @awayjs/view
yarn link @awayjs/renderer
yarn link @awayjs/graphics
yarn link @awayjs/materials
cd ..

echo [32m Checkout and link "@awayjs/arcade" module[0m
cd arcade
yarn
yarn link
cd ..

cd ..

echo [32m Cloning "@awayfl" modules from Github[0m

mkdir @awayfl
cd @awayfl
git clone https://github.com/Fancy2209/swf-loader.git  --depth=1 -b Stage3D
git clone https://github.com/awayfl/avm1.git  --depth=1 -b dev
git clone https://github.com/awayfl/avm2.git  --depth=1 -b dev
git clone https://github.com/Fancy2209/playerglobal.git  --depth=1 -b stage3d

echo [32m Checkout and link "@awayfl/swf-loader" module[0m
cd swf-loader
yarn
yarn link
yarn link @awayjs/core
yarn link @awayjs/view
yarn link @awayjs/stage
yarn link @awayjs/renderer
yarn link @awayjs/graphics
yarn link @awayjs/materials
yarn link @awayjs/scene
cd ..

echo [32m Checkout and link "@awayfl/avm1" module[0m
cd avm1
yarn
yarn link
yarn link @awayjs/core
yarn link @awayjs/view
yarn link @awayjs/stage
yarn link @awayjs/renderer
yarn link @awayjs/graphics
yarn link @awayjs/materials
yarn link @awayjs/scene
yarn link @awayfl/swf-loader
cd ..

echo [32m Checkout and link "@awayfl/avm2" module[0m
cd avm2
yarn
yarn link
yarn link @awayjs/core
yarn link @awayjs/view
yarn link @awayjs/renderer
yarn link @awayjs/graphics
yarn link @awayjs/materials
yarn link @awayjs/scene
yarn link @awayjs/stage
yarn link @awayfl/swf-loader
cd ..

echo [32m Checkout and link "@awayfl/playerglobal" module[0m
cd playerglobal
yarn
yarn link
yarn link @awayjs/core
yarn link @awayjs/stage
yarn link @awayjs/view
yarn link @awayjs/renderer
yarn link @awayjs/graphics
yarn link @awayjs/materials
yarn link @awayjs/scene
yarn link @awayfl/swf-loader
yarn link @awayfl/avm2
cd ..

echo [32m Checkout and link "awayfl-player" module[0m
cd ..
cd awayfl-player
yarn
yarn link
yarn link @awayjs/core
yarn link @awayjs/stage
yarn link @awayjs/view
yarn link @awayjs/renderer
yarn link @awayjs/graphics
yarn link @awayjs/materials
yarn link @awayjs/scene
yarn link @awayfl/swf-loader
yarn link @awayfl/avm1
yarn link @awayfl/avm2
yarn link @awayfl/playerglobal

read -n 1 -s -r -p "Press any key to continue . . ."
exit
