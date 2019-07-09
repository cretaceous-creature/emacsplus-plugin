#!/bin/bash
cp $( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )/*jar $1/plugins
cd $1
var=$(pwd)
echo "com.mulgasoft.emacsplus,4.2.0,"$var"/plugins/com.mulgasoft.emacsplus_4.2.0.jar,4,false" >> $1/configuration/org.eclipse.equinox.simpleconfigurator/bundles.info
echo "com.mulgasoft.emacsplus.optional,4.0.5,"$var"/plugins/com.mulgasoft.emacsplus.optional_4.0.5.jar,4,false" >> $1/configuration/org.eclipse.equinox.simpleconfigurator/bundles.info
