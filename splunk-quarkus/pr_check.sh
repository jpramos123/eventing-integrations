#!/bin/bash

#Adapted from https://github.com/RedHatInsights/insights-ingress-go/blob/master/pr_check.sh

# --------------------------------------------
# Options that must be configured by app owner
# --------------------------------------------
APP_NAME="eventing-integrations"  # name of app-sre "application" folder this component lives in
COMPONENT_NAME="eventing-integration-splunk"  # name of app-sre "resourceTemplate" in deploy.yaml for this component
IMAGE="quay.io/cloudservices/eventing-integrations-splunk"

#IQE_PLUGINS="drift"
#IQE_MARKER_EXPRESSION="smoke" # Need to check this
#IQE_FILTER_EXPRESSION=""
#IQE_CJI_TIMEOUT="30m"


# Install bonfire repo/initialize
CICD_URL=https://raw.githubusercontent.com/RedHatInsights/bonfire/master/cicd
curl -s $CICD_URL/bootstrap.sh > .cicd_bootstrap.sh && source .cicd_bootstrap.sh
source $CICD_ROOT/build.sh
source $APP_ROOT/deploy_ephemeral_env.sh
#source $CICD_ROOT/cji_smoke_test.sh
