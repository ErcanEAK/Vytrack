package com.vytrack.step_definitions;


import com.vytrack.pages.LoginPage;
import com.vytrack.utilities.ConfigurationReader;
import com.vytrack.utilities.Driver;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.interactions.Action;
import org.openqa.selenium.interactions.Actions;

public class LoginStepdefs {
    LoginPage loginPage= new LoginPage();


     @Given("the user is on the login page")
    public void theUserIsOnTheLoginPage() {
         Driver.get().get(ConfigurationReader.get("url"));

    }

    @When("the user logged with {string} {string}")
    public void theUserLoggedWith(String username, String password) {

        loginPage.login(username,password);
    }

    @Then("the pageTitle should be {string}")
    public void thePageTitleShouldBe(String title) {

        Assert.assertEquals(title,loginPage.getPageSubTitle());


    }

    @Then("the message should be {string}")
    public void theMessageShouldBe(String message) {

            Assert.assertEquals(message,loginPage.alertMessage.getText());
    }

    @Then("the pop up message should be {string}")
    public void thePopUpMessageShouldBe(String Popup) {
        Assert.assertTrue(loginPage.popUpMessage(Popup));

    }

    @When("the user clicked {string} button")
    public void theUserClickedButton(String forgotPassword) {
         Driver.get().findElement(By.linkText(forgotPassword)).click();
    }

    @Then("verify page title {string}")
    public void verifyPageTitle(String pageTitle) {

         Assert.assertEquals(pageTitle,Driver.get().getTitle());
    }

    @When("verify the link {string} is exist")
    public void verifyTheLinkIsExist(String rememberLink) {
         Assert.assertTrue(loginPage.rememberText.isDisplayed());

    }

    @Then("verify the link {string} is clickable")
    public void verifyTheLinkIsClickable(String rememberLink) {
        Assert.assertTrue(loginPage.rememberMeCheckBox.isEnabled());
    }

    @When("the user logged with enter key {string} {string}")
    public void theUserLoggedWithEnterKey(String username, String password) {

         loginPage.userNameInput.sendKeys(username);
         loginPage.password.sendKeys(password+ Keys.ENTER);

    }

    @Then("the username {string} is displayed")
    public void theUsernameIsDisplayed(String arg0) {
    }

    @When("verify password input bullet sign")
    public void verifyPasswordInputBulletSign() {

         Assert.assertTrue(loginPage.password.getAttribute("type").equals("password"));
    }

    @When("user click the tab close button")
    public void userClickTheTabCloseButton() {

         Driver.get().findElement(By.linkText("Logout")).click();
    }

    @Then("user should open browser")
    public void userShouldOpenBrowser() {
        Driver.get().get(ConfigurationReader.get("url"));
    }

    @Then("account should be closed")
    public void accountShouldBeClosed() {

         Assert.assertEquals("Login",Driver.get().getTitle());
    }

    @When("user click the logout button")
    public void userClickTheLogoutButton() {
        Driver.get().findElement(By.linkText("Logout")).click();
    }

    @Then("verify page title should be Login")
    public void verifyPageTitleShouldBeLogin() {

        Assert.assertEquals("Login",Driver.get().getTitle());
    }

    @Then("Click step Back button")
    public void clickStepBackButton() {
        Driver.get().navigate().back();

    }

    @Then("Verify user not be able to Home page {string}")
    public void verifyUserNotBeAbleToHomePage(String Page) {

         Assert.assertEquals(Page,Driver.get().getTitle());
    }
}
