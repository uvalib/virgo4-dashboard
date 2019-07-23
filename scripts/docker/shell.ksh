if [ -z "$DOCKER_HOST" ]; then
   echo "ERROR: no DOCKER_HOST defined"
   exit 1
fi

# set the definitions
INSTANCE=virgo4-dashboard
NAMESPACE=uvadave

docker run -ti -p 8998:8080 $NAMESPACE/$INSTANCE /bin/bash -l
