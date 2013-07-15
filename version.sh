if [ ! -f $(dirname $0)/fasttp-lib/include/fasttp/fasttp.h ]; then
    echo "version.sh: error: $(dirname $0)/fasttp-lib/include/fasttp/fasttp.h does not exist" 1>&2
    exit 1
fi

MAJOR=`egrep '^#define +FASTTP_VERSION_MAJOR +[0-9]+$' $(dirname $0)/fasttp-lib/include/fasttp/fasttp.h`
MINOR=`egrep '^#define +FASTTP_VERSION_MINOR +[0-9]+$' $(dirname $0)/fasttp-lib/include/fasttp/fasttp.h`
PATCH=`egrep '^#define +FASTTP_VERSION_PATCH +[0-9]+$' $(dirname $0)/fasttp-lib/include/fasttp/fasttp.h`

if [ -z "$MAJOR" -o -z "$MINOR" -o -z "$PATCH" ]; then
    echo "version.sh: error: could not extract version from $(dirname $0)/fasttp-lib/include/fasttp/fasttp.h" 1>&2
    exit 1
fi

MAJOR=`echo $MAJOR | awk '{ print $3 }'`
MINOR=`echo $MINOR | awk '{ print $3 }'`
PATCH=`echo $PATCH | awk '{ print $3 }'`

echo $MAJOR.$MINOR.$PATCH | tr -d '\n'
