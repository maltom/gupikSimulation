if [ ! -d "rovModel" ]; then
    mkdir rovModel
fi
cd rovModel

cmake ../../rovModel/
make

cd ..
if [ ! -d "world" ]; then
    mkdir world
fi
cd world

cmake ../../world/
make

cd ..
if [ ! -d "gupikModel" ]; then
    mkdir gupikModel
fi
cd gupikModel

cmake ../../gupikModel/
make

cd ..
if [ ! -d "trackBall" ]; then
    mkdir trackBall
fi
cd trackBall

cmake ../../trackBall/
make

cd ..