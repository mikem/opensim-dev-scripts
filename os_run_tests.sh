#!/bin/bash

if [ -z $1 ]
then
    echo "Please provide the directory name in /home/mike/source/ in which to run tests."
    exit 1
fi

TEST_DLLS="
OpenSim.Framework.Tests.dll
OpenSim.Framework.Communications.Tests.dll
OpenSim.Framework.Servers.Tests.dll
OpenSim.Region.ClientStack.LindenUDP.Tests.dll
OpenSim.Region.ScriptEngine.Tests.dll
OpenSim.Region.Framework.Tests.dll
OpenSim.Region.CoreModules.Tests.dll
OpenSim.Data.SQLite.Tests.dll
OpenSim.Data.MySQL.Tests.dll
OpenSim.Region.Physics.OdePlugin.dll
"

cd /home/mike/source/$1/bin
cp Physics/OpenSim.Region.Physics.OdePlugin.dll .
nunit-console $TEST_DLLS
retval=$?
rm OpenSim.Region.Physics.OdePlugin.dll
exit $retval
