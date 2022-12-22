branch=master
git clone -b $branch https://github.com/anes10a/quran /root/anes10a
cp quran/.env /root/anes10a/.env
cd /root/anes10a
docker build . --rm --force-rm --compress --pull --file Dockerfile -t quran
docker run --privileged --env-file .env --rm -i quran
