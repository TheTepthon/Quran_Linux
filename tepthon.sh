branch=master
git clone -b $branch https://github.com/TheTepthon/quran /root/TheTepthon
cp quran/.env /root/TheTepthon/.env
cd /root/TheTepthon
docker build . --rm --force-rm --compress --pull --file Dockerfile -t quran
docker run --privileged --env-file .env --rm -i quran
