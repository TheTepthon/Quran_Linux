branch=main
git clone -b $branch https://github.com/anes10a/tepthon /root/anes10a
cp tepthon/.env /root/anes10a/.env
cd /root/anes10a
docker build . --rm --force-rm --compress --pull --file Dockerfile -t tepthon
docker run --privileged --env-file .env --rm -i tepthon
