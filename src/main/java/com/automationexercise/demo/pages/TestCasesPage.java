package com.automationexercise.demo.pages;

import com.automationexercise.demo.utilities.Utility;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.openqa.selenium.By;

public class TestCasesPage extends Utility {
    private static final Logger log = LogManager.getLogger(HomePage.class.getName());

    public String getCurrentURL() {
        waitUntilVisibilityOfElementLocated(By.xpath("//b[normalize-space()='Test Cases']"), 5);
        log.info("Getting Home Page URL : ");
        System.out.println(driver.getCurrentUrl());
        return driver.getCurrentUrl();
    }
}

