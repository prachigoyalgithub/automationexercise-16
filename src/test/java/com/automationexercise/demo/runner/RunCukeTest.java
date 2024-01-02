package com.automationexercise.demo.runner;

import io.cucumber.testng.AbstractTestNGCucumberTests;
import io.cucumber.testng.CucumberOptions;

@CucumberOptions(
        features = "src/test/resources/features" ,
        glue = "com/automationexercise/demo/steps",
        plugin = {"html:target/cucumber-reports/cucumber-html-report.html",
                "com.aventstack.extentreports.cucumber.adapter.ExtentCucumberAdapter:"},
        tags ="@smoke"
)
public class RunCukeTest extends AbstractTestNGCucumberTests {
}


