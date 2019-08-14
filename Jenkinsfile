pipeline {
    agent any

    environment {

        VERSION = VersionNumber([projectStartDate: '2015-01-01', versionNumberString: '${YEARS_SINCE_PROJECT_START}.${BUILD_MONTH}.${BUILD_DAY}.${BUILDS_TODAY}', versionPrefix: '', worstResultForIncrement: 'NOT_BUILT'])
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
    }

    stages {        
        stage('dotnet sonarscanner begin') {
            steps {
               echo "dotnet sonarscanner begin Start"
               bat  "dotnet sonarscanner begin /k:${TheJobName} /v:${VERSION} /d:sonar.exclusions=obj\\*,bin\\*,packages\\**,Properties\\* /d:sonar.cs.opencover.reportsPaths=\"${calculation}.test\\coverage.opencover.xml\" "
               echo "dotnet sonarscanner begin OK"
            }
        }
    }

     stages {        
        stage('dotnet sonarscanner build') {
            steps {
               echo "dotnet sonarscanner build Start"
               bat  "dotnet build ${testcoverage}.sln -c Release -p:Version=${VERSION}"
               echo "dotnet sonarscanner build OK"
            }
        }
    }


     stages {        
        stage('dotnet test') {
            steps {
               echo "dotnet test Start"
               bat  "dotnet test ${PROJECT_NAME}.tests/calculation.tests.csproj --configuration Release --logger:\"trx;LogFileName=testresult.xml\" /p:CollectCoverage=true /p:CoverletOutputFormat=opencover /p:CoverletOutput=\"TestResults\\opencover.xml\" "               
               echo "dotnet test OK"
            }
        }
    }

     stages {        
        stage('dotnet sonarscanner end') {
            steps {
                echo "dotnet sonarscanner end Start"
                bat  "dotnet sonarscanner end"
                echo "dotnet sonarscanner end OK"
            }
        }
    }
}