oc login  https://api.cluster-b0ef.b0ef.example.opentlc.com:6443
while true; do curl -s ${oc get route bluegreen --template='{{.spec.host }}')/item.php | grep "data/images" | awk '{print $5}'; sleep 1; done; ;
while true; do curl -s $(oc get route bluegreen --template='{{.spec.host }}')/item.php | grep "data/images" | awk '{print $5}'; sleep 1; done
whoami
echo $GUID
java -v
java --version
java -version
clear
pwd
ls
mkdir openshift-course
git init
git status
git add .
git commit -am "Initial commit"
git status
oc login https://api.cluster-b0ef.b0ef.example.opentlc.com:6443
oc new-project ${GUID}-deployments --display-name "${GUID} Deployments"
oc projects
oc new-app --name='blue' --labels=name="blue" php~https://github.com/redhat-gpte-devopsautomation/cotd.git --env=SELECTOR=cats
oc expose svc green --name=bluegreen
oc get route
oc new-app --name='green' --labels=name="green" php~https://github.com/redhat-gpte-devopsautomation/cotd.git --env=SELECTOR=cities
oc status
oc expose svc green --name=bluegreen
oc set route-backends bluegreen blue=0 green=1
oc patch route-backends bluegreen blue=0 green=1
oc patch route/bluegreen -p '{"spec":{"to":{"name":"blue"}}}'
oc patch route/bluegreen -p '{"spec":{"to":{"name":"green"}}}'
oc patch route-backends bluegreen blue=1 green=1
oc set route-backends bluegreen blue=1 green=1
oc patch route/bluegreen -p '{"spec":{"to":{"name":"green"}}}'
oc patch route/bluegreen -p '{"spec":{"to":{"name":"blue"}}}'
oc set route-backends bluegreen blue=5 green=5
oc patch route/bluegreen -p '{"spec":{"to":{"name":"blue"}}}'
oc status
oc edit route
oc patch route/bluegreen -p '{"spec":{"to":{"name":"blue"}}}'
oc patch route/bluegreen -p '{"spec":{"to":{"name":"green"}}}'
oc edit route
oc set route-backends bluegreen blue=1
oc edit route
oc patch route/bluegreen -p '{"spec":{"to":{"name":"green"}}}'
oc patch route/bluegreen -p '{"spec":{"to":{"name":"blue"}}}'
oc edit app blue
oc edit deploymentblue
oc edit deployment/blue
oc edit deployment blue
oc edit dc blue
oc edit app
oc edit application
oc edit
oc edit deployment blue
oc edit dc blue
watch oc get pods
oc set route-backends bluegreen blue=0 green=100
oc set route-backends bluegreen blue=100 green=0
oc edit dc green
oc edit dc blue
watch oc get pods
oc get all
echo $EDITOR
export EDITOR=/usr/bin/vim
oc edit dc green
ls
pwd
cd openshift-course/
ls
vim readiness.yaml
mv readiness.yaml liveness.yaml
ls
vim liveness.yaml 
oc edit dc green
