# docker-gnucash
A gnucash docker image

## Usage
```
docker run -e DISPLAY="unix${DISPLAY}" \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -v /:/host/ \
  -v /home/<username>/.gnucash/:/home/root/.gnucash \
  rainu/gnucash
```
