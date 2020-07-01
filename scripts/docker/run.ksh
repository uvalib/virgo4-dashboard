#if [ -z "$DOCKER_HOST" ]; then
#   echo "ERROR: no DOCKER_HOST defined"
#   exit 1
#fi

# set the definitions
INSTANCE=virgo4-dashboard
NAMESPACE=uvadave

if [ -z "$DOCKER_HOST" ]; then
   DOCKER_TOOL=docker
else
   DOCKER_TOOL=docker-17.04.0
fi

# stop the running instance
$DOCKER_TOOL stop $INSTANCE

# remove the instance
$DOCKER_TOOL rm $INSTANCE

# remove the previously tagged version
$DOCKER_TOOL rmi $NAMESPACE/$INSTANCE:current  

# tag the latest as the current
$DOCKER_TOOL tag -f $NAMESPACE/$INSTANCE:latest $NAMESPACE/$INSTANCE:current

$DOCKER_TOOL run -d -p 8998:8080 -e RAILS_ENV=production --name $INSTANCE $NAMESPACE/$INSTANCE:latest

# return status
exit $?
