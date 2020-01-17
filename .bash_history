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
oc projects
oc new-project ${GUID}-tasks-dev --display-name="${GUID} Tasks Dev"
oc projects
oc policy add-role-to-user edit system:serviceaccount:${GUID}-tasks-dev:jenkins -n ${GUID}-tasks-dev
oc policy add-role-to-user edit system:serviceaccount:${GUID}-jenkins:jenkins -n ${GUID}-tasks-dev
oc new-build --help
oc new-build --help | grep binary
oc new-build --binary=true --name="tasks" jboss-eap72-openshift:1.0 -n ${GUID}-tasks-dev
oc create dc --help
oc new-app ${GUID}-tasks-dev/tasks:0.0-0 --name=tasks --allow-missing-imagestream-tags=true -n ${GUID}-tasks-dev
oc set triggers dc/tasks --remove-all -n ${GUID}-tasks-dev
oc expose dc tasks --port 8080 -n ${GUID}-tasks-dev
oc expose svc tasks -n ${GUID}-tasks-dev
oc get routes
oc set probe dc/tasks -n ${GUID}-tasks-dev --readiness --failure-threshold 3 --initial-delay-seconds 60 --get-url=http://:8080/
oc create configmap tasks-config --from-literal="application-users.properties=Placeholder" --from-literal="application-roles.properties=Placeholder" -n ${GUID}-tasks-dev
oc set volume dc/tasks --add --name=jboss-config --mount-path=/opt/eap/standalone/configuration/application-users.properties --sub-path=application-users.properties --configmap-name=tasks-config -n ${GUID}-tasks-dev
oc set volume dc/tasks --add --name=jboss-config1 --mount-path=/opt/eap/standalone/configuration/application-roles.properties --sub-path=application-roles.properties --configmap-name=tasks-config -n ${GUID}-tasks-dev
oc new-project ${GUID}-tasks-prod --display-name "${GUID} Tasks Production"
oc policy add-role-to-group system:image-puller system:serviceaccounts:${GUID}-tasks-prod -n ${GUID}-tasks-dev
oc policy add-role-to-user edit system:serviceaccount:${GUID}-jenkins:jenkins -n ${GUID}-tasks-prod
oc new-app ${GUID}-tasks-dev/tasks:0.0 --name=tasks-blue --allow-missing-imagestream-tags=true -n ${GUID}-tasks-prod
oc set triggers dc/tasks-blue --remove-all -n ${GUID}-tasks-prod
oc expose dc tasks-blue --port 8080 -n ${GUID}-tasks-prod
oc set probe dc tasks-blue -n ${GUID}-tasks-prod --readiness --failure-threshold 3 --initial-delay-seconds 60 --get-url=http://:8080/
oc create configmap tasks-blue-config --from-literal="application-users.properties=Placeholder" --from-literal="application-roles.properties=Placeholder" -n ${GUID}-tasks-prod
oc set volume dc/tasks-blue --add --name=jboss-config --mount-path=/opt/eap/standalone/configuration/application-users.properties --sub-path=application-users.properties --configmap-name=tasks-blue-config -n ${GUID}-tasks-prod
oc set volume dc/tasks-blue --add --name=jboss-config1 --mount-path=/opt/eap/standalone/configuration/application-roles.properties --sub-path=application-roles.properties --configmap-name=tasks-blue-config -n ${GUID}-tasks-prod
oc new-app ${GUID}-tasks-dev/tasks:0.0 --name=tasks-green --allow-missing-imagestream-tags=true -n ${GUID}-tasks-prod
oc set triggers dc/tasks-green --remove-all -n ${GUID}-tasks-prod
oc expose dc tasks-green --port 8080 -n ${GUID}-tasks-prod
oc set probe dc tasks-green -n ${GUID}-tasks-prod --readiness --failure-threshold 3 --initial-delay-seconds 60 --get-url=http://:8080/
oc create configmap tasks-green-config --from-literal="application-users.properties=Placeholder" --from-literal="application-roles.properties=Placeholder" -n ${GUID}-tasks-prod
oc set volume dc/tasks-green --add --name=jboss-config --mount-path=/opt/eap/standalone/configuration/application-users.properties --sub-path=application-users.properties --configmap-name=tasks-green-config -n ${GUID}-tasks-prod
oc set volume dc/tasks-green --add --name=jboss-config1 --mount-path=/opt/eap/standalone/configuration/application-roles.properties --sub-path=application-roles.properties --configmap-name=tasks-green-config -n ${GUID}-tasks-prod
oc expose svc/tasks-blue --name tasks -n ${GUID}-tasks-prod
watch oc get pods
oc projects
oc project ca4f-tasks-dev 
oc watch get pods
watch oc get pods
oc project ca4f-jenkins 
watch oc get pods
ls
cd openshift-tasks/
git status
git diff
git status
git log
git push private master
git fetch
git pull
git status
git push gogs master
git status
vim Jenkinsvile
mv Jenkinsvile  Jenkinsfile
git add Jenkinsfile
git commit -am "Add Jenkinsfile"
git push private master
vim Jenkinsfile 
git commit -am "Initial empty pipeline"
git push private master
git config --global credential.helper cache
vim Jenkinsfile 
vim /etc/vimrc 
sudo vim /etc/vimrc 
vim Jenkinsfile 
git commit -am "Add GUID"
git credendtialsId
ls
mkdir gogs-git-credentials
cd gogs-git-credentials/
ssh-keygen
ls
cat gogs-jenkins.pub 
cat gogs-jenkins
oc projects
oc project ca4f-gogs
oc expose --help
oc status
oc expose dc gogs-gogs --port 22
oc expose deployment gogs-gogs --port 22
oc edit deployment gogs-gogs
echo $EDITOR
export EDITOR=/usr/bin/vim
oc edit deployment gogs-gogs
oc edit service gogs-gogs
oc get pods
oc get gogs-gogs-5
oc get pod gogs-gogs-5887fddfbf-554dj 
oc get route gogs-gogs-5887fddfbf-554dj 
oc get routes
pwd
cd ../..
ls
cd gogs-operator/
ls
vim gogs.yaml 
vim playbook.yml 
cd deploy/
ls
cd op
vim operator.yaml 
cd ../build/
ls
cd Doc
oc get pods
oc dc -l
oc dc --help
oc get dc --help
oc get dc --all
oc get dc
oc get deployment
oc expose gogs gogs --port=22 --name=gogs-ssh
oc expose gogs gogs-gogs --port=22 --name=gogs-ssh
oc project
oc projects
oc project ca4f-tasks-prod 
ls
cd ../..
ls
cd openshift-tasks/
ls
vim Jenkinsfile 
git commit -am "Add git credentials"
git push private master
ls
cd gogs-git-credentials/
vim jenkins-token.txt
git add .
git status 
git commit -am "Created tokens for jenkins and gogs"
vim gogs-post-hook-jenkins.sh
oc get services -n ca4f-jenkins
vim gogs-post-hook-jenkins.sh
git add .
git commit -am "Update post-hook with correct jenkins service/project names"
git push private master
ssh hgerlach@https://gogs-gogs-ca4f-gogs.apps.cluster-b0ef.b0ef.example.opentlc.com/
git status
git status private
ls
cd ..
ls
cd src/main/webapp/
vim index.jsp 
export VERSION=1.1
cd $HOME/openshift-tasks
export VERSION=1.1
mvn versions:set -f pom.xml -s nexus_settings.xml -DgenerateBackupPoms=false -DnewVersion=${VERSION}
git add pom.xml src/main/webapp/index.jsp
git diff
git status
git commit -m "Increased version to ${VERSION}"
git push private master
ls
vim Jenkinsfile 
git commit -am "Set image tags" Jenkinsfile
git commit -am "Set image tags"
git push private master
vim Jenkinsfile 
git commit -am "Build WAR file"
git push private master
vim Jenkinsfile 
cd ~/gogs-operator/
ls
cd deploy/
ls
cd ../build/
ls
cd ../roles/
ls
cd ../deploy/
ls
cd ..
ls
cd build/
ls
cd test-framework/
ls
cd ~
ls
cd openshift-tasks/
ls
vim nexus_openshift_settings.xml 
cd ..
ls
cd openshift-tasks/
ls
vim Jenkinsfile 
git commit -am "Made purposeful mistake for testing"
git push private master
vim Jenkinsfile 
git commit -a "Fix purposeful mistake"
git commit -am "Fix purposeful mistake"
git push private master
vim Jenkinsfile 
git commit -am "Add unit tests and report results"
git push private master
vim Jenkinsfile 
git commit -am "Add missing quotation mark in unit test step"
git push private master
vim Jenkinsfile 
git status
git diff
git commit -am "Modified formatting of unit test section"
git push private master
vim Jenkinsfile 
ls
cd target/
ls
cd ..
vim Jenkinsfile 
git commit -am "Modified surefire location (test1)"
git push private master
oc rsh --help
oc project
oc project ca4f-tasks-dev 
oc get pods
oc project ca4f-jenkins 
oc get pods
oc rsh jenkins-2-k7k27 
oc get pods
oc rsh jenkins-agent-appdev-1-build 
oc get pvc
oc rsh jenkins-2-k7k27 
ls
oc project ca4f-nexus 
oc get pods
oc rsh nexus-2-qzgk6 
ls
oc get pods
oc get projects
oc project ca4f-builds 
oc get pods
oc get projects
oc project ca4f-deployments
oc get pods
oc get projects
oc project ca4f-gogs
oc get pods
oc projects
oc tasks-dev
oc project ca4f-tasks-dev 
oc get pods
oc project ca4f-jenkins
oc get pods
oc rsh jenkins-2-k7k27 
ls
vim Jenkinsfile 
git commit -am "Debugging unit test"
git push private master
vim Jenkinsfile 
git commit -am "Debugging unit test part 2"
git push private master
oc get pods
oc rsh maven-appdev-h4r25 
vim Jenkinsfile 
git commit -am "Debugging unit test part 3"
git push private master
vim Jenkinsfile 
git commit -am "Debugging unit test part 4"
git push private master
cd **
ls
cd ..
vim Jenkinsfile 
git commit -am "Debugging unit test part 4"
git push private master
oc get pods
vim Jenkinsfile 
oc get pods
watch oc get pods
oc get pods
oc rsh maven-appdev-nkfs2
vim Jenkinsfile 
git commit -am "Debugging unit test part 5"
git push private master
vim Jenkinsfile 
git status
git add .
git commit -am "Debugging unit test part 6"
git push private master
vim Jenkinsfile 
git commit -am "Unit test cleanup""
git commit -am "Unit test cleanup"
git push private master
vim Jenkinsfile 
git commit -am "Add SonarQube code coverage tests"
git push private master
vim Jenkinsfile 
git commit -am "Commenting out items that take a long time to build"
vim Jenkinsfile 
git commit -am "Store WAR File in Nexus"
git push private master
echo $GUID
vim Jenkinsfile 
git commit -am "Update nexus port number"
git push private master
vim Jenkinsfile 
"Build the container image in OpenShift using the local build image"
git commit -am "Build the container image in OpenShift using the local build image"
git push private master
vim Jenkinsfile 
git commit -am "Replace with exact code solutions guide code to fix error in build command"
git push private master
vim Jenkinsfile 
git commit -am "Added braces to fix syntax errors"
git push private master
vim Jenkinsfile 
git commit -am "Building with nexus image"
git push private master
vim Jenkinsfile 
git commit -am "Change $version to $devTag"
git push private master
echo $VERSION
export VERSION=1.1.1
mvn versions:set -f pom.xml -s nexus_settings.xml -DgenerateBackupPoms=false -DnewVersion=${VERSION}
git add pom.xml src/main/webapp/index.jsp
git commit -m "Increased version to ${VERSION}"
git push private master
vim Jenkinsfile 
git commit -am "Change from devTag to version"
git push private master
vim Jenkinsfile 
git commit -am "echo tests for version"
git push private master
vim Jenkinsfile 
git commit -am "Fix output to match groovy styling"
git push private master
vim Jenkinsfile 
git commit -am "Added version definition to beginning of file"
git push private master
vim Jenkinsfile 
git commit -am "Rm def of latter versoin""
git commit -am "Rm def of latter versoin"
git push private master
vim Jenkinsfile 
git commit -am "Remove echos used for testing"
git push private master
ls 
cd configuration/
ls
vim application-roles.properties 
cd ..
vim Jenkinsfile 
git commit -am "Deploy built image into development project"
git push private master
oc get pods
oc login
oc logout
oc login -u user13
oc project ca4f-tasks-dev
oc get pods
oc logs -f tasks-1-h42wl 
oc get routes
git status
cd ..
ls
git status
git add .
git commit -am "Day 4"
git push origin master
eval "$(ssh-agent -T)"
eval "$(ssh-agent -s)"
ssh-add .ssh/github-openshift-vm
git push origin master
exit
git status
exit
