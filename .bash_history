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
ls
pwd
git status
ls
cd openshift-course/
ls
rm liveness.yaml 
git status
git remote add origin git@github.com:HunterGerlach/OpenShift-Application-Deployment-Course.git
yes
git remote add origin git@github.com:HunterGerlach/OpenShift-Application-Deployment-Course.git
git push -u origin master
git status
cd ../.ssh/
ls
ssh-keygen
ls
cat github.pub 
git push -u origin master
git remote add origin git@github.com:HunterGerlach/OpenShift-Application-Deployment-Course.git
ls
cd ../openshift-course/
ls -la
ls
ls -la
cd ..
ls -la
cd .git
ls
cd config
ls
vim config
git status
git init
git remote add origin git@github.com:HunterGerlach/OpenShift-Application-Deployment-Course.git
git push -u origin master
ssh-add
cd .ssh
pwd
cd ..
ls
cd .ssh
ssh-add
eval "$(ssh-agent -s)"
ssh-add github
cd ..
ls
git status
git push -u origin master
cd openshift-course/
git push -u origin master
git remote add origin git@github.com:HunterGerlach/OpenShift-Application-Deployment-Course.git
git push -u origin master
oc status
oc edit dc/green
echo $EDIT
echo $EDITOR
export EDITOR=/usr/bin/vim
oc edit dc/green
vim
oc edit dc/green
oc status
oc edit dc/green
oc set probe dc/green --readiness --open-tcp=8080
oc set probe dc/blue --readiness --open-tcp=8080
oc edit dc/green
oc set probe dc/blue --liveness --open-tcp=8080
oc set probe dc/green --liveness --open-tcp=8080
oc set probe dc/green --readiness --get-url=http://:8080/healthz
oc set probe dc/blue --readiness --get-url=http://:8080/healthz
oc edit dc/green
oc status
watch oc get pods
oc new-project $GUID-logging --display-name="$GUID Logging"
oc projects
ls
pwd
vim Dockerfile
vim writelog
oc new-app quay.io/gpte-devops-automation/logtofile:latest
oc status
watch oc get pods
oc get pods
oc logs logtofile-1-r4rlj 
oc logs logtofile-1d-deploy
oc logs logtofile-1-deploy
oc logs logtofile-1-r4rlj 
oc edit dc logtofile 
watch oc get pods
oc get pods
oc logs logtofile-2-bjpj7 
oc edit dc logtofile 
watch oc get pods
oc get pods
oc logs logfile-6-9zbpg
oc logs logtofile-6-9zbpg
oc edit dc logtofile 
oc get pods
watch oc get pods
oc get pods
oc logs logtofile-7-2gmtx 
oc logs logtofile-7-2gmtx logtofile
oc logs logtofile-7-2gmtx logging-sidecar
oc logs explain
oc explain logs
oc logs --help
oc logs logtofile-7-2gmtx -c logtofile
oc logs logtofile-7-2gmtx -c logging-sidecar
oc new-project $GUID-rocket --display-name="$GUID Rocket Chat"
vim statefulset.yaml
oc create -f statefulset.yaml 
oc status
cp statefulset.yaml mongodb.yaml 
vim mongodb.yaml 
mv mongodb.yaml statefulset2.yaml
oc create -f statefulset2.yaml 
vim mongodb.yaml
vim mongo.yaml
echo $EDITOR
vim mongo.yaml
vim statefulset
vim statefulset.yaml 
vim mongo.yaml
oc explain service
oc explain service --recursive=true
vim mongo.yaml
vim statefulset.yaml 
oc explain spec.selector.matchLabels
oc explain metadata.spec.selector.matchLabels
vim mongodb.yaml 
oc create -f mongodb.yaml 
watch oc get pods
oc logs mongodb-0
watch oc get pods
oc logs mongodb-1
watch oc get pods
oc logs mongodb-1
watch oc get pods
oc logs mongodb-2
oc get pvc
oc scale --help
oc scale --replicas=5
oc scale --replicas=5 -f mongodb.yaml 
watch oc get pods
oc get pvc
watch oc get pods
oc get pvc
oc scale --replicas=3 -f mongodb.yaml 
watch oc get pods
oc get pvc
oc new-app docker.io/rocketchat/rocket.chat:0.63.3 -e MONGO_URL="mongodb://mongodb_user:mongodb_password@mongodb:27017/mongodb?replicaSet=rs0"
oc status
watch oc get pods
oc logs rocketchat-1-swc7b 
oc expose svc/rocketchat
oc get routes
