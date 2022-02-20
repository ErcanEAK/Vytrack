package com.vytrack.pages;

import com.vytrack.utilities.BrowserUtils;
import com.vytrack.utilities.Driver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class LoginPage extends BasePage {

    public LoginPage(){
        PageFactory.initElements(Driver.get(), this);
    }

    @FindBy(id="prependedInput")
    public WebElement userNameInput;

    @FindBy(id = "remember_me")
    public WebElement rememberMeCheckBox;

    @FindBy(xpath = "//span[contains(text(),'Remember me')]")
    public WebElement rememberText;


    @FindBy(id="prependedInput2")
    public WebElement password;

    @FindBy(id = "_submit")
    public WebElement submit;

    @FindBy(css = "div.alert.alert-error")
    public WebElement alertMessage;


    public void login(String userNameStr, String passwordStr) {
        userNameInput.sendKeys(userNameStr);
        password.sendKeys(passwordStr);
        submit.click();
        // verification that we logged
    }
    public String getErrorMsg() {
       BrowserUtils.waitForPageToLoad(5);
        return alertMessage.getText();
    }
    public boolean popUpMessage(String message) {
        boolean flag = false;
        if (userNameInput.getText().equals("")){
            if(userNameInput.getAttribute("validationMessage").equals(message)){
                flag = true;
            }
        }
        if(password.getText().equals("")){
            if(password.getAttribute("validationMessage").equals(message)){
                flag = true;
            }
        }
        return flag;
    }



}