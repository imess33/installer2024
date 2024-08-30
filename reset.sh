#! /bin/bash
containername=webgateway
docker stop ${containername}
docker rm ${containername}
docker-compose up -d 
# rm -rf /Users/hma/InterSystems/external/newiris/iconfig



# To install zpm:

set r = ##class(%Net.HttpRequest).%New(),r.Server="pm.community.intersystems.com",r.SSLConfiguration="ISC.FeatureTracker.SSL.Config" d r.Get("/packages/zpm/latest/installer"),$system.OBJ.LoadStream(r.HttpResponse.Data,"c") 