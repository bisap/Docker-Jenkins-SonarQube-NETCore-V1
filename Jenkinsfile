pipeline {
    agent any

    environment {

        //VERSION = VersionNumber([projectStartDate: '2015-01-01', versionNumberString: '${YEARS_SINCE_PROJECT_START}.${BUILD_MONTH}.${BUILD_DAY}.${BUILDS_TODAY}', versionPrefix: '', worstResultForIncrement: 'NOT_BUILT'])
        PROJECT_KEY = 'soanr_qube_qualitygates'
         PROJECT_NAME= 'calculation'
         testcoverage = 'testcoverage'
      
    }

    stages {        
        stage('Clone git') {
            steps {
               git 'https://github.com/bisap/Docker-Jenkins-SonarQube-NETCore-V1.git'
            }
        }
    

       stage('dotnet test') {
            steps {

            //    echo "dotnet test Start"
            //    sh  "dotnet test ${PROJECT_NAME}.tests/calculation.tests.csproj --configuration Release --logger:\"trx;LogFileName=testresult.xml\" /p:CollectCoverage=true /p:CoverletOutputFormat=opencover /p:CoverletOutput=\"TestResults\\opencover.xml\" "               
            //    sh "dotnet build-server shutdown"
            //    echo "dotnet test OK"



            sh "dotnet test calculation.tests/calculation.tests.csproj /p:CollectCoverage=true /p:CoverletOutputFormat=opencover"
            sh "dotnet build-server shutdown"
            sh "dotnet sonarscanner begin /k:\"soanr_qube_qualitygates\" /d:sonar.host.url=http://139.59.47.153:9000 /d:sonar.cs.opencover.reportsPaths=\"calculation.tests\\coverage.opencover.xml\" /d:sonar.coverage.exclusions=\"**Tests*.cs\" "
            sh "dotnet build"
            sh "dotnet sonarscanner end"

            }
        }

         
        // stage('dotnet sonarscanner begin') {
        //     steps {
        //     //  sh  " dotnet tool install --global dotnet-sonarscanner --version 4.6.2"
        //        echo "dotnet sonarscanner begin Start"              
        //        sh  "dotnet sonarscanner begin /k:${PROJECT_KEY}   /d:sonar.exclusions=obj\\*,bin\\*,packages\\**,Properties\\* /d:sonar.cs.opencover.reportsPaths=\"/src/**/TestResults/opencover.xml\"  /d:sonar.cs.vstest.reportsPaths=\"/src/**/TestResults/testresult.xml\" /d:sonar.scm.disabled=true /d:sonar.coverage.dtdVerification=true /d:sonar.coverage.exclusions=\"*Tests*.cs,*testresult*.xml,*opencover*.xml\" /d:sonar.test.exclusions=\"*Tests*.cs,*testresult*.xml,*opencover*.xml\" "
        //        echo "dotnet sonarscanner begin OK"
        //     }
        // }
    

         
        // stage('dotnet sonarscanner build') {
        //     steps {
        //        echo "dotnet sonarscanner build Start"
        //        sh  "dotnet build ${testcoverage}.sln -c Release "
        //        echo "dotnet sonarscanner build OK"
        //     }
        // }
    


   
     
   

       
        // stage('dotnet sonarscanner end') {
        //     steps {
        //         echo "dotnet sonarscanner end Start"
        //         sh  "dotnet sonarscanner end"
        //         echo "dotnet sonarscanner end OK"
        //     }
        // }
    }
}