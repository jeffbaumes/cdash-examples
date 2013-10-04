Simple CDash Examples
=====================

/java
-----
This directory contains a Maven project that is tested with JUnit. To run the Maven build and tests, execute

    mvn test

To upload JUnit result to CDash first clone the CDash Maven plugin.
    
    git clone https://github.com/cjh1/maven-cdash-plugin.git

Install the plugin into your local repository.

    mvn install

Then in your Maven project use the following command to upload test results.

   mvn com.kitware.maven.plugins:maven-cdash-plugin:upload-report-surefire
