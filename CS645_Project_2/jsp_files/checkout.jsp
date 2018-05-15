<!DOCTYPE html>
<!--
Nguyen, Thuc
jadrn025
Project #2
Spring 2018
-->
<html lang="en" dir="ltr">
    <head>
        <meta charset="utf-8">
        <title>Check Out</title>

        <link rel="stylesheet" href="/jadrn025/css/menu.css">
        <link rel="stylesheet" href="/jadrn025/css/checkout.css">
        <link rel="stylesheet" href="/jadrn025/css/footer.css">

        <script type="text/javascript" src="http://jadran.sdsu.edu/jquery/jquery.js"></script>
        <script type="text/javascript" src="/jadrn025/js/shopping_cart.js"></script>
        <script type="text/javascript" src="/jadrn025/js/menu_search.js"></script>
        <script type="text/javascript" src="/jadrn025/js/checkout.js"></script>
    </head>
    <body>
        <%-- MENU --%>
        <%@ include file="menu.jsp" %>

        <div id="content">
            <div>
            <h2>Check Out</h2>

            <form action="/jadrn025/servlet/OrderConfirmation" method="post" name="paymentForm">

                <div id="billing_address_div">
                    <h3>Billing Address</h3>

                    <div class="section">
                        <div class="name_div">
                            <div>
                                <label for="bill_first_name">First Name</label>
                                <input type="text" id="bill_first_name" name="billFirstName" value="">
                            </div>
                            <div>
                                <label for="bill_last_name">Last Name</label>
                                <input type="text" id="bill_last_name" name="billLastName" value="">
                            </div>
                        </div>
                        <div id="error_bill_names_div">
                            <p>Input fields for first and last name cannot be empty.</p>
                        </div>
                    </div>

                    <div class="section">
                        <div class="flex_column">
                            <div class="flex_column">
                                <label for="bill_address">Address</label>
                                <input type="text" id="bill_address" name="billAddress" value="">
                            </div>
                            <div class="subaddress_div">
                                <div>
                                    <label for="bill_city">City</label>
                                    <input type="text" id="bill_city" name="billCity" value="">
                                </div>
                                <div>
                                    <label for="bill_state">State</label>
                                    <input type="text" id="bill_state" name="billState" value="" placeholder="i.e. CA" maxlength="2">
                                </div>
                                <div>
                                    <label for="bill_zip_code">Zip Code</label>
                                    <input type="text" id="bill_zip_code" name="billZipCode" value="" placeholder="xxxxx" maxlength="5">
                                </div>
                            </div>
                        </div>
                        <div id="error_bill_address_div">
                            <p>Input fields cannot be empty. Use the two-letter abbreviations for the State. The Zip Code must contain a five-digit value.</p>
                        </div>
                    </div>

                    <div class="section_phone">
                        <div class="phone_number_div">
                            <label for="bill_phone_area">Phone Number</label>
                            <div>
                                <input type="text" id="bill_phone_area" name="billPhoneArea" value="" placeholder="(xxx)" size="6" maxlength="3">
                                <input type="text" name="billPhone3" value="" placeholder="xxx" size="6" maxlength="3">
                                <input type="text" name="billPhone4" value="" placeholder="xxxx" size="8" maxlength="4">
                            </div>
                        </div>
                        <div id="error_bill_phone_div">
                            <p>Enter a valid phone number. Phone numbers may not contain letters or special characters. Input fields cannot be empty.</p>
                        </div>
                    </div>
                </div>

                <div id="shipping_checkbox_div">
                    <input type="checkbox" name="shippingCheckbox">
                    <p>Billing address is the same as Shipping address.</p>
                </div>

                <!-- Ship to same address button -->
                <div id="shipping_address_div">
                    <h3>Shipping Address</h3>

                    <div class="section">
                        <div class="name_div">
                            <div>
                                <label for="ship_first_name">First Name</label>
                                <input type="text" id="ship_first_name" name="shipFirstName" value="">
                            </div>
                            <div>
                                <label for="ship_last_name">Last Name</label>
                                <input type="text" id="ship_last_name" name="shipLastName" value="">
                            </div>
                        </div>
                        <div id="error_ship_names_div">
                            <p>Input fields for first and last name cannot be empty.</p>
                        </div>
                    </div>

                    <div class="section">
                        <div class="flex_column">
                            <div class="flex_column">
                                <label for="ship_address">Address</label>
                                <input type="text" id="ship_address" name="shipAddress" value="">
                            </div>
                            <div class="subaddress_div">
                                <div>
                                    <label for="ship_city">City</label>
                                    <input type="text" id="ship_city" name="shipCity" value="">
                                </div>
                                <div>
                                    <label for="ship_state">State</label>
                                    <input type="text" id="ship_state" name="shipState" value="" placeholder="i.e. CA" maxlength="2">
                                </div>

                                <div>
                                    <label for="ship_zip_code">Zip Code</label>
                                    <input type="text" id="ship_zip_code" name="shipZipCode" value="" placeholder="xxxxx" maxlength="5">
                                </div>
                            </div>
                        </div>
                        <div id="error_ship_address_div">
                            <p>Input fields cannot be empty. Use the two-letter abbreviations for the State, capitalized. The Zip Code must contain a five-digit value.</p>
                        </div>
                    </div>

                    <div class="section_phone">
                        <div class="phone_number_div">
                            <label for="ship_phone_area">Phone Number</label>
                            <div>
                                <input type="text" id="ship_phone_area" name="shipPhoneArea" value="" placeholder="(xxx)" size="6" maxlength="3">
                                <input type="text" name="shipPhone3" value="" placeholder="xxx" size="6" maxlength="3">
                                <input type="text" name="shipPhone4" value="" placeholder="xxxx" size="8" maxlength="4">
                            </div>
                        </div>
                        <div id="error_ship_phone_div">
                            <p>Enter a valid phone number. Phone numbers may not contain letters or special characters. Input fields cannot be empty.</p>
                        </div>
                    </div>

                </div>

                <div id="payment_type_div">
                    <h3>Payment Type</h3>
                    <div class="section">
                        <div id="cards_div">
                            <div>
                                <input type="radio" id="radio_visa" name="radioPaymentType" value="Visa">
                                <label for="radio_visa">Visa</label>
                            </div>
                            <div>
                                <input type="radio" id="radio_mastercard" name="radioPaymentType" value="Mastercard">
                                <label for="radio_mastercard">Mastercard</label>
                            </div>
                            <div>
                                <input type="radio" id="radio_discover" name="radioPaymentType" value="Discover">
                                <label for="radio_discover">Discover</label>
                            </div>
                            <div>
                                <input type="radio" id="radio_american_express" name="radioPaymentType" value="American Express">
                                <label for="radio_american_express">American Express</label>
                            </div>
                        </div>
                        <div id="error_payment_type_div">
                            <p>Select a payment type.</p>
                        </div>
                    </div>
                </div>

                <div id="credit_card_div">
                    <h3>Credit and Debit Cards</h3>
                    <div class="section">
                        <div>
                            <div>
                                <label for="name_on_card">Name on Card</label>
                                <input type="text" id="name_on_card" name="cardName" value="" maxlength="100">
                            </div>
                        </div>
                        <div id="error_card_name_div">
                            <p>Enter the your name on the credit or debit card.</p>
                        </div>
                    </div>
                    <div class="section">
                        <div>
                            <div>
                                <label for="card_number">Card Number</label>
                                <input type="text" id="card_number" name="cardNumber" value="" maxlength="16">
                            </div>
                        </div>
                        <div id="error_card_number_div">
                            <p>Enter the 16-digit number on the credit or debit card without spaces.</p>
                        </div>
                    </div>
                </div>

                <div id="expiration_div">
                    <h4>Expiration Date</h4>
                    <div class="section">
                        <div>
                            <div>
                                <label for="expiration_month">Month</label>
                                <input type="text" id="expiration_month" name="expMonth" value="" placeholder="mm" maxlength="2">
                            </div>
                            <div>
                                <label for="expiration_year">Year</label>
                                <input type="text" id="expiration_year" name="expYear" value="" placeholder="yyyy" maxlength="4">
                            </div>
                            <div>
                                <label for="expiration_cvc">CVC</label>
                                <input type="text" id="expiration_cvc" name="expCVC" value="" placeholder="cvc" maxlength="3">
                            </div>
                        </div>
                        <div id="error_expiration_div">
                            <p>Enter a valid date for the credit or debit card. The CVC is the security code located on the back of the card.</p>
                        </div>
                    </div>
                </div>

                <div id="checkout_div">
                    <input type="submit" name="" value="Continue">
                </div>
            </form>
        </div>
        </div>

        <%-- FOOTER --%>
        <%@ include file="footer.jsp" %>
    </body>
</html>
