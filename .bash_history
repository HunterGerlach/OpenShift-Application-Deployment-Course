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
whoami
tail -n 20 history
ls
ls -la
tail -n 20 .bash_history 
ls
git status
git add .
git status
git commit -am "Day 1, 1.5"
git status
clear
ls
cd openshift-course/
ls
rm Dockerfile writelog 
ls
git commit -am "rm unused files"
git config --global user.name "Hunter Gerlach"
git config --global user.email "hgerlach@redhat.com"
clar
clear
<li><p>Download the Operator SDK binary into <code>/usr/bin</code>:</p><div class="admonitionblock note"><table><tbody><tr><td class="icon"><i class="icon-note" title="Note"></i></td><td class="content"><div class="paragraph"><p>This lab uses version <code>v0.12.0</code> because the Operator SDK changes quite frequently and you need to use a well-defined snapshot of the repository to guarantee a smooth lab.</p></div></td></tr></tbody></table></div>
<div class="listingblock"><div class="content"><pre class="highlight"><code class="sh language-sh hljs bash">sudo wget https://github.com/operator-framework/operator-sdk/releases/download/v0.<span class="hljs-number">12.0</span>/operator-sdk-v0.<span class="hljs-number">12.0</span>-x86_64-linux-gnu -O /usr/bin/operator-sdk
sudo wget https://github.com/operator-framework/operator-sdk/releases/download/v0.12.0/operator-sdk-v0.12.0-x86_64-linux-gnu -O /usr/bin/operator-sdk
sudo chmod +x /usr/bin/operator-sdk
echo EDITOR
echo $EDITOR
export EDITOR=/usr/bin/vim
cd $HOME
pwd
ls
git clone https://github.com/redhat-gpte-devopsautomation/ansible-operator-roles
cd ansible-operator-roles/
git checkout v0.12.0
cd $HOME
cd ansible-operator-roles/playbooks/
cat gogs.yaml 
less gogs.yaml 
ls
cd ../../
cd ansible-operator-roles/roles/
ls
cd postgresql-ocp/
ls
cd tasks/
ls
vim
echo $EDITOR
vim
ls
less main.yml 
cd $HOME
operator-sdk
operator-sdk version
operator-sdk new gogs-operator --api-version=gpte.opentlc.com/v1alpha1 --kind=Gogs --type=ansible
ls
cd gogs-operator/
ls
git add .
git commit -am "Create new Gogs operator"
clear
ls
cd ..
ls
operator-sdk new gogs-operator --api-version=gpte.opentlc.com/v1alpha1 --kind=Gogs --type=ansible --generator=playbook
ls
rm -rf gogs-operator/
operator-sdk new gogs-operator --api-version=gpte.opentlc.com/v1alpha1 --kind=Gogs --type=ansible --generator-playbook
operator-sdk new gogs-operator --api-version=gpte.opentlc.com/v1alpha1 --kind=Gogs --type=ansible --generate-playbook
ls
cd gogs-operator/
ls
cd ..
ls
git add .
git status
git commit -am "Re-do operator creation with --generate-playbook"
cd gogs-operator/
rm -rf roles playbook.yml 
ls
mkdir roles
cp -R ../ansible-operator-roles/roles/postgresql-ocp/ ./roles/
cp -R ../ansible-operator-roles/roles/gogs-ocp/ ./roles/
cp ../ansible-operator-roles/playbooks/gogs.yaml ./playbook.yml
ls
less watches.yaml 
ls
less build/Dockerfile 
cat watches.yaml 
cat build/Dockerfile 
man podman
sudo podman login -u hgerlach quay.io
git status
cd ..
git status
ls
vim .gitignore
cd .git
ls
cd config
vim config
ls
cd hooks
ls
cd ..
ls
cd ..
ls
git status
git add .
git add --all
git status
git commit -am "Login to quay.io via podman"
git log
clear
ls
cd gogs-operator/
ls
cd build/
ls
cat Dockerfile 
cd ..
ls
operator-sdk build --help
operator-sdk build quay.io/hgerlach/gogs-operator:v0.0.1 --image-builder podman
export QUAY_ID=hgerlach
echo $QUAY_ID
sudo operator-sdk build quay.io/${QUAY_ID}/gogs-operator:v0.0.1 --image-builder podman
sudo podman push quay.io/${QUAY_ID}/gogs-operator:v0.0.1
cd deploy/
vim operator.yaml 
oc get crd
echo $GUID
oc new-project ${GUID}-gogs --display-name="Gogs"
ls
oc create -f operator.yaml 
ls
vim operator.yaml 
oc create -f operator.yaml 
ls
oc create -f role_binding.yaml 
vim operator.yaml 
vim role_binding.yaml 
ls
oc status
watch oc get pods
oc logs gogs-operator
oc get pods
oc get gogs
vim role_binding.yaml 
vim
oc get pods
watch oc get pods
vim role_binding.yaml 
ls
ls -la
rm -rf .role_binding.yaml.swp 
ls
oc create -f role.yaml 
oc delete gogs_operator
ls
oc apply -f service_account.yaml 
vim role.yaml 
oc apply -f role.yaml 
oc api-resources
oc api-resources | grep gpte
clear
oc apply -f role.yaml 
ls
oc delete --help
oc delete -f operator.yaml 
oc apply -f role.yaml 
vim role.yaml 
oc apply -f role.yaml 
vim role.yaml 
less role
less role.yaml 
clear
oc apply -f role.yaml 
git status
git add .
git status
git add --all
git commit -am "Operator lesson - forbidden"
git status
cd $HOME
git status
git add .
git status
git add --all
git status
git commit -am "Until Forbidden Operators"
git status
ls
echo ${REGISTRY}
export REGISTRY=default-route-openshift-image-registry.apps.$(oc whomai --show-server | cut -d. -f2- | cut -d: -f1)
export REGISTRY=default-route-openshift-image-registry.apps.$(oc whoami --show-server | cut -d. -f2- | cut -d: -f1)
echo $(REGISTRY)
echo $REGISTRY
sudo podman login -u $(oc whoami) -p $(oc whoami -t) ${REGISTRY}
echo $GUID
clear
sudo podman login -u $(oc whoami) -p $(oc whoami -t) ${REGISTRY}
oc whoami
oc login
sudo podman login -u $(oc whoami) -p $(oc whoami -t) ${REGISTRY}
oc new-project ${GUID}-nexus --display-name="${GUID} Shared Nexus"
oc projects
oc new-app --help
oc new-app sonatype/nexus3:latest --name="nexus"
oc status
oc expose nexus
oc expose svc/nexus
oc rollout --help
oc rollout pause --help
oc rollout pause dc/nexus
echo $EDITOR
oc edit dc
oc set --help
oc set resources --help
oc set resources dc nexus --limits=memory=2Gi,cpu=2 --requests=memory=1Gi,cpu=500m
oc edit dc
oc set volume dc/nexus --add --overwrite --name=nexus-volume-1 --mount-path=/nexus-data/ --type persistentVolumeClaim --claim-name=nexus-pvc --claim-size=10Gi
oc edit dc
oc set probes --liveness --help
oc set probe dc/nexus --liveness --failure-threshold 3 --initial-delay-seconds 60 --echo ok
oc set probe dc/nexus --liveness --failure-threshold 3 --initial-delay-seconds 60 -- echo ok
oc set probe dc/nexus --readiness --failure-threshold 3 --initial-delay-seconds 60 --get-url=http://:8081/
git add .
git status
git add .bash_history
git status
git commit -am "Add bash_history"
git status
oc rollout resume dc/nexus
watch oc get pods
oc get pods
oc get routes
oc get pods
export NEXUS_PASSWORD=$(oc rsh nexus-2-qzgk6 cat /nexus-data/admin.password)
echo $NEXUS_PASSWORD
curl -o setup_nexus3.sh -s https://raw.githubusercontent.com/redhat-gpte-devopsautomation/ocp_advanced_development_resources/master/nexus/setup_nexus3.sh
chmod +x setup_nexus3.sh 
./setup_nexus3.sh admin $NEXUS_PASSWORD http://$(oc get route nexus --template='{{.spec.host }}')
rm setup_nexus3.sh 
git add .
git status
git commit -am "Nexus setup"
curl --help
curl -I http://nexus-ca4f-nexus.apps.cluster-b0ef.b0ef.example.opentlc.com/
curl -I http://nexus-ca4f-nexus.apps.cluster-b0ef.b0ef.example.opentlc.com:5000
watch oc get pods
curl -I http://nexus-ca4f-nexus.apps.cluster-b0ef.b0ef.example.opentlc.com --help
curl -I http://nexus-ca4f-nexus.apps.cluster-b0ef.b0ef.example.opentlc.com:5000
oc apply -f role.yaml 
ls
cd gogs-operator/
oc apply -f role.yaml 
ls
cd roles/
ls
cd gogs-ocp/
ls
cd ../
ls
cd ..
ls
cd deploy/
ls
oc apply -f role.yaml 
oc apply -f role_binding.yaml 
oc apply -f operator.yaml 
oc get pods
oc projects
oc delete -f operator.yaml 
oc delete -f role_binding.yaml 
oc delete -f role.yaml 
cd project gogs
oc project gogs
oc project $GUID-gogs
oc projects
oc apply -f role.yaml 
oc apply -f role_binding.yaml 
oc apply -f operator.yaml 
oc get pods
watch oc get pods
oc logs -c operator -f gogs-operator-54f696b8cc-c7jp7 
echo "apiVersion: gpte.opentlc.com/v1alpha1
kind: Gogs
metadata:
  name: gogs
spec:
  postgresqlVolumeSize: 4Gi
  gogsVolumeSize: 4Gi
  gogsSsl: True" > $HOME/gogs-operator/gogs.yaml
cat \$HOME/gogs-operator/gogs.yaml 
ls
pwd
cd ../
ls
cat gogs.yaml 
oc apply -f gogs.yaml 
oc get operators
watch oc get pods
oc logs -c operator -f gogs-operator-54f696b8cc-c7jp7 
watch oc get pods
oc logs -c operator -f gogs-operator-54f696b8cc-c7jp7 
watch oc get pods
oc logs -c operator -f gogs-operator-54f696b8cc-c7jp7 
watch oc get pods
oc logs -c ansible -f gogs-operator-54f696b8cc-c7jp7 
oc logs -c --help
oc get gogs
oc describe gogs gogs
oc get route
echo "apiVersion: gpte.opentlc.com/v1alpha1
kind: Gogs
metadata:
  name: gogs
spec:
  postgresqlVolumeSize: 4Gi
  gogsVolumeSize: 4Gi
  gogsSsl: False" > $HOME/gogs-operator/gogs-no-ssl.yaml
oc create -f gogs-no-ssl.yaml 
echo "apiVersion: gpte.opentlc.com/v1alpha1
kind: Gogs
metadata:
  name: gogs-no-ssl
spec:
  postgresqlVolumeSize: 4Gi
  gogsVolumeSize: 4Gi
  gogsSsl: False" > $HOME/gogs-operator/gogs-no-ssl.yaml
cat gogs-no-ssl.yaml 
oc create -f gogs-no-ssl.yaml 
watch oc get pods
oc describe gogs gogs
oc get route
watch oc get pods
oc projects
oc project ca4f-nexus 
oc project
oc projects
oc get pods
oc expose dc nexus --port=5000 --name=nexus-registry 
oc route edge nexus-registry --service=nexus-registry --port=5000
oc create route edge nexus-registry --service=nexus-registry --port=5000
oc get routes -n $GUID-nexus
oc get routes
oc new-project $GUID-sonarqube --display-name="${GUID} Shared Sonarqube"
oc projects
oc new-app template=postgresql-persistent --param POSTGRESQL_USER=sonar --param POSTGRESQL_PASSWORD=sonar --param POSTGRESQL_DATABASE=sonar --param VOLUME_CAPACITY=4Gi --labels=app=sonarqube_db
oc new-app --template=postgresql-persistent --param POSTGRESQL_USER=sonar --param POSTGRESQL_PASSWORD=sonar --param POSTGRESQL_DATABASE=sonar --param VOLUME_CAPACITY=4Gi --labels=app=sonarqube_db
watch oc get pods
oc logs postgresql-1-mxqw6 
watch oc get pods
oc new-app --docker-image=quay.io/gpte-devops-automation/sonarqube:7.9.1 --env=SONARQUBE_JDBC_USERNAME=sonar --env=SONARQUBE_JDBC_PASSWORD=sonar --env=SONARQUBE_JDBC_URL=jdbc:postgresql://postgresql/sonar --labels=app=sonarqube
watch oc get pods
oc get pods -w
watch oc get pods
oc rollout pause dc/sonarqube
oc expose route
oc expose dc/sonarqube
oc status
oc expose dc/sonarqube
oc get routes
oc get routes -n ca4f-sonarqube
oc expose svc/sonarqube
oc set volume dc/sonarqube --add -overwrite --name=sonarqube-volume-1 --mount-path=/opt/sonarqube/data/ --type persistentVolumeClaim --claim-name=sonarqube-pvc --claim-size=5Gi
oc set volume dc/sonarqube --add --overwrite --name=sonarqube-volume-1 --mount-path=/opt/sonarqube/data/ --type persistentVolumeClaim --claim-name=sonarqube-pvc --claim-size=5Gi
oc set resources dc nexus --limits=memory=2Gi,cpu=2 --requests=memory=1Gi,cpu=500m
oc set resources dc sonarqube --limits=memory=3Gi,cpu=2 --requests=memory=2Gi,cpu=1
oc patch dc sonarqube --patch='{"spec":{"strategy":{"type":"Recreate"}}}'
oc set probe dc/sonarqube --liveness --failure-threshold 3 --initial-delay-seconds 40 --get-url=http://:9000/about
oc set probe dc/sonarqube --readiness --failure-threshold 3 --initial-delay-seconds 20 --get-url=http://:9000/about
oc rollout resume dc/sonarqube
watch oc get pods
oc get routes
cd $HOME
git add .
git commit -am "Add sonarqube
"
git status
git clone https://github.com/redhat-gpte-devopsautomation/openshift-tasks.git
cd openshift-tasks/
git remote add gogs http://hgerlach:redhat@$(oc get route gogs-gogs -n ${GUID}-gogs --template='{{ .spec.host }}')/CICDLabs/openshift-tasks.git
git push -u gogs master
git status
git add --all
git status
git commit -am "Updates from Day 2"
git status
ls
echo $EDITOR
export EDITOR=/usr/bin/vim
vim nexus_settings.xml
ls
cd openshift-tasks/
ls
vim nexus_settings.xml 
cd ..
mv nexus_settings.xml openshift-tasks/
cd openshift-tasks/
ls
vim nexus_settings.xml 
echo $GUID
vim nexus_openshift_settings.xml 
ls
git status
git commit -am "Update nexus settings"
git push
git push -u gogs master
cd ..
oc project
oc projects
oc new-project ${GUID}-jenkins --display-name="${GUID} Shared Jenkins"
git projects
oc projects
oc new-app jenkins-persistent --param ENABLE_OAUTH=true --param MEMORY_LIMIT=2Gi --param VOLUME_CAPACITY=4Gi --param DISABLE_ADMINISTRATIVE_MONITORS=true
oc set resources dc jenkins --limits=memory=2Gi,cpu=2 --request=memory=1Gi,cpu=500m
oc set resources dc jenkins --limits=memory=2Gi,cpu=2 --requests=memory=1Gi,cpu=500m
oc status
oc get pods
oc logs jenkins-2-k7k27 
oc new-build --strategy=docker -D $'FROM quay.io/openshift/origin-jenkins-agent-maven:4.1.0\n
   USER root\n
   RUN curl https://copr.fedorainfracloud.org/coprs/alsadi/dumb-init/repo/epel-7/alsadi-dumb-init-epel-7.repo -o /etc/yum.repos.d/alsadi-dumb-init-epel-7.repo && \ \n
   curl https://raw.githubusercontent.com/cloudrouter/centos-repo/master/CentOS-Base.repo -o /etc/yum.repos.d/CentOS-Base.repo && \ \n
   curl http://mirror.centos.org/centos-7/7/os/x86_64/RPM-GPG-KEY-CentOS-7 -o /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 && \ \n
   DISABLES="--disablerepo=rhel-server-extras --disablerepo=rhel-server --disablerepo=rhel-fast-datapath --disablerepo=rhel-server-optional --disablerepo=rhel-server-ose --disablerepo=rhel-server-rhscl" && \ \n
   yum $DISABLES -y --setopt=tsflags=nodocs install skopeo && yum clean all\n
   USER 1001' --name=jenkins-agent-appdev -n ${GUID}-jenkins
oc get is
oc get pods
oc expose svc/jenkins
oc get routes
oc get pods
oc get service
oc get pods
oc delete pod maven-appdev-2x52t
oc get pods
oc logs maven-appdev-vfg9b 
oc logs maven-appdev-vfg9b -c jnlp
oc logs -c jnlp maven-appdev-vfg9b 
oc logs maven-appdev-vfg9b -c jnlp
oc get pods
oc delete pod maven-appdev-vfg9b 
oc projects
oc get pods
oc delete pod maven-appdev-n6jrx 
watch oc get pods
oc delete pod maven-appdev-ngqg0 
watch oc get pods
mvn --version
javac -version
skopeo --version
pwd
cd openshift-tasks/
mvn clean install -DskipTests=true -s ./nexus_settings.xml 
ls
less pom.xml 
vim pom.xml 
ls
vim nexus_settings.xml 
ls
vim nexus_openshift_settings.xml 
git status
git commit -am "Update maven settings repo url"
git push gogs master
mvn clean install -DskipTests=true -s ./nexus_settings.xml 
mvn -s ./nexus_settings.xml deploy -DskipTests=true -DaltDeploymentRepository=nexus::default::http://$(oc get route nexus -n ${GUID}-nexus --template='{{ .spec.host }}')/repository/releases
echo $REGISTRY
export REGISTRY=default-route-openshift-image-registry.apps.$(oc whoami --show-server | cut -d. -f2- | cut -d: -f1)
echo $REGISTRY
skopeo copy --src-tls-verify=false --dest-tls-verify=false --src-creds=openshift:$(oc whoami -t) --dest-creds=admin:app_deploy docker://${REGISTRY}/${GUID}-jenkins/jenkins-agent-appdev docker://$(oc get route nexus-registry -n ${GUID}-nexus --template='{{ .spec.host }}')/${GUID}-jenkins/jenkins-agent-maven-appdev
mvn sonar:sonar -s ./nexus_settings.xml -Dsonar.host.url=http://$(oc get route sonarqube -n ${GUID}-sonarqube --template='{{ .spec.host }}')
java -jar ./ola/target/ola.jar
git status
cd ..
cd ~
git status
git add .
git status
git commit -am "Update"
git status
ls
oc status
oc projects
oc new-project ${GUID}-builds --display-name="${GUID} Builds"
oc projects
pwd
cd openshift-tasks/
git remote add private https://gogs-gogs-ca4f-gogs.apps.cluster-b0ef.b0ef.example.opentlc.com/CICDLabs/openshift-labs-private.git
git push private master
oc new-app --templates=eap72-basic-s2i --param APPLICATION_NAME=tasks --param SOURCE_REPOSITORY=https://gogs-gogs-ca4f-gogs.apps.cluster-b0ef.b0ef.example.opentlc.com/CICDLabs/openshift-labs-private.git --param SOURCE_REPOSITORY_REF=master --param CONTEXT_DIR=/ --param MAVEN_MIRROR_URL=http://nexus.ca4f-nexus.svc.cluster.local:8001/repository/maven-all-public
oc new-app --template=eap72-basic-s2i --param APPLICATION_NAME=tasks --param SOURCE_REPOSITORY=https://gogs-gogs-ca4f-gogs.apps.cluster-b0ef.b0ef.example.opentlc.com/CICDLabs/openshift-labs-private.git --param SOURCE_REPOSITORY_REF=master --param CONTEXT_DIR=/ --param MAVEN_MIRROR_URL=http://nexus.ca4f-nexus.svc.cluster.local:8001/repository/maven-all-public
oc new-app --template=eap72-basic-s2i --param APPLICATION_NAME=tasks --param SOURCE_REPOSITORY_URL=https://gogs-gogs-ca4f-gogs.apps.cluster-b0ef.b0ef.example.opentlc.com/CICDLabs/openshift-labs-private.git --param SOURCE_REPOSITORY_REF=master --param CONTEXT_DIR=/ --param MAVEN_MIRROR_URL=http://nexus.ca4f-nexus.svc.cluster.local:8001/repository/maven-all-public
oc logs -f tasks-1-build 
oc describe pod tasks-1-build 
oc create secret --help
oc create secret generic --help
oc create secret generic gogs-secret --from-literal=username=hgerlach --from-literal=password=redhat
oc describe secret gogs-secret
oc secret
oc new-app --help
oc new-app --source-secret --help
oc set build-secret --source bc/taks gogs-secret
oc set build-secret --source bc/tasks gogs-secret
oc start-build tasks
oc get pods
oc logs -f tasks-2-build 
oc start-build tasks
oc get pods
oc logs -f tasks-3-build 
oc start-build tasks
oc get pods
oc logs -f tasks-4-build 
oc get pods
oc logs -f tasks-4-build 
oc get routes
oc get service
oc get services
oc project nexus
oc project ca4f-nexus
oc get routes
oc describe service nexus
oc project ca4f-builds 
oc edit bc
ls
ls -la
cd .git
ls
vim config
git fetch
oc start-build tasks
watch oc get pods
oc logs -f tasks-5-build 
oc edit bc
oc logs -f tasks-5-build 
oc delete project ca4f-builds 
oc project
oc projects
oc new-project ${GUID}-builds --display-name="${GUID} Builds"
oc projects
oc get secrets
ls
cd ..
ls
vim nexus_settings.xml 
git status
git commit -am "Broke the comment"
git push private master
oc new-app --template=eap72-basic-s2i --param APPLICATION_NAME=tasks --param SOURCE_REPOSITORY_URL=http://gogs-gogs.${GUID}-gogs.svc.cluster.local:3000/CICDLabs/openshift-tasks-private.git --param SOURCE_REPOSITORY_REF=master --param CONTEXT_DIR=/ --param MAVEN_MIRROR_URL=http://nexus.${GUID}-nexus.svc.cluster.local:8081/repository/maven-all-public
oc get pods
oc logs -f tasks-1-build 
oc create secret generic gogs-secret --from-literal=username=hgerlach --from-literal=password=redhat
oc set build-secret --source bc/tasks gogs-secret
oc start-build tasks
oc get pods
oc logs -f tasks-2-build 
oc edit bc
export EDITOR=/usr/bin/vim
oc edit bc
oc start-build tasks
oc get pods
oc logs -f tasks-3-build 
oc edit bc
oc new-app --help
oc new-app --image-stream=redhat-openjdk18-openshift:1.2 https://github.com/redhat-gpte-devopsautomation/ola.git
oc expose svc/ola
oc get routes
curl http://$(oc get route ola --template='{{ .spec.host }}')/api/ola
watch curl http://$(oc get route ola --template='{{ .spec.host }}')/api/ola
oc get routes
oc get route ola
oc get pods
oc logs -f ola-1-w9rm6 
curl http://$(oc get route ola --template='{{ .spec.host }}')/api/ola
cd $HOME
git clone https://githu.com/redhat-gpte-devopsautomation/ola.git
git clone https://github.com/redhat-gpte-devopsautomation/ola.git
ls
cd ola/
ls
mvn clean package
ls
cd target/
ls
curl http://127.0.0.1:8080/api/ola
oc new-app --binary=true --name=ola-binary --image-stream=redhat-openjdk18-openshift:1.2
oc delete app ola-binary
oc pods
oc get pods
oc start-build ola-binary --from-file=ola.jar --follow
oc expose svc/ola-binary --port=8080
oc get routes
oc get pods
watch oc get pods
oc logs -f ola-binary-1-hd26v 
oc status
oc delete dc ola-binary
oc delete route ola-binary
oc describe
oc describe ca4f-builds
oc projects
oc describe project
oc describe project ca4f-builds
oc new-build --binary=true --name=ola-binary --image-stream=redhat-openjdk18-openshift:1.2
oc delete bc ola-binary
oc new-build --binary=true --name=ola-binary --image-stream=redhat-openjdk18-openshift:1.2
oc start-build ola-binary --from-file=$HOME/ola/target/ola/jar --folow
oc start-build ola-binary --from-file=$HOME/ola/target/ola/jar --follow
ls
oc start-build ola-binary --from-file=$HOME/ola/target/ola.jar --follow
oc new-app ola-binary
oc delete service ola-binary
oc new-app ola-binary
oc delete service ola-binary
oc delete dc ola-binary
oc new-app ola-binary
oc expose svc/ola-binary --port=8080
oc get routes
oc get pods
watch oc get pods
oc logs -f ola-1-build 
oc logs -f ola-1-w9rm6 
curl http://$(oc get route ola-binary --template='{{ .spec.host }}')/api/ola
oc new-build --name=builder --help
oc import-image jorgemoralespou/s2i-go --confirm
oc new-build --name=builder --source-image=jorgemoralespou/s2i-go https://github.com/tonykay/ose-chained-builds --context-dir=/go-scratch/hello_world
oc new-build --name=builder s2i-go~https://github.com/tonykay/ose-chained-builds --context-dir=/go-scratch/hello_world
oc get pods
oc logs -f builder-1-build 
oc describe is builder
oc new-build --name=runtime --docker-image=scratch --source-image=builder --source-image-path=/opt/app-root/src/go/src/main/main:. --dockerfile=$'FROM scratch\nCOPY main /main\nEXPOSE 8080\nUSER 1000\nENTRYPOINT ["/main"]'
oc get pods
oc logs -f bc/runtime
oc new-app runtime --name=my-application
oc expose svc/my-application
oc get routes
oc get pods
oc logs -f my-application-1-dsnrw 
curl $(oc get route my-application --template='{{ .spec.host }}')
cd ~
git statu
git status
git remote
git remote add origin git@github.com:HunterGerlach/OpenShift-Application-Deployment-Course.git
git push -u origin master
git fetch
ssh-agent
cd .ssh
ls
cat github.pub 
git fetch
ssh -T git@github.com
eval "$(ssh-agent -s)"
ssh-add -l
ssh-add github
cd ..
ssh -T git@github.com
git fetch
git push
git push origin master
git add .bash_history
git status
ls
ls -la
vim .gitignore
ls
git add .gitignore
git status
git commit -am "Ignore ssh dir"
git push
git push origin master
cd .ssh
ssh-keygen
cat github-openshift-vm.pub 
git status
git push origin master
ssh-add github-openshift-vm
git push origin master
git fetch
git pull
git push origin master
git rebase master
git pull
git status
git push origin master
git fetch
git pull origin master
git status
ls
ls -la
ssh -T git@github.com
git push origin master
set cursorcolumn
set showcmd
set showmatch
set ignorecase
set smartcase
set cursorcolumn
set showcmd
set showmatch
set ignorecase
set smartcase
set cursorcolumn
set showcmd
set showmatch
set ignorecase
set smartcase
set cursorcolumn
set showcmd
set showmatch
set ignorecase
set smartcase
wget --help
oc login --help
oc status
oc login
oc status
ls
ssh-keygen
cat secret-test
