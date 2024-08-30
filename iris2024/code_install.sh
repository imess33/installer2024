#!/bin/bash
DIR=$(dirname $0)
if [ "$DIR" = "." ]; then
DIR=$(pwd)
fi

# To install zpm:
iris session $ISC_PACKAGE_INSTANCENAME -U USER <<- EOF
set r = ##class(%Net.HttpRequest).%New(),r.Server="pm.community.intersystems.com",r.SSLConfiguration="ISC.FeatureTracker.SSL.Config" d r.Get("/packages/zpm/latest/installer"),\$system.OBJ.LoadStream(r.HttpResponse.Data,"c") 
halt
EOF

exit 0
