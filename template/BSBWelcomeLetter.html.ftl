<#assign interestRateLabel = '${interestRate!"-"}%'>
<#setting number_format=",##0.####">

<#assign isVisaSignature = (productName == "Visa Signature")>
<#assign customerServicePhoneNumber = "833-498-2464">
<#if isVisaSignature>
    <#assign customerServicePhoneNumber = "833-498-2466">
</#if>

<div>
    <#if customerAddress??>
        <#if customerAddress.address1?? && customerAddress.address1 != ''>
            <#assign addressLine1 = '${(customerAddress.address1)!""} ${(customerAddress.address2)!""}'>
        </#if>
        <#if customerAddress.city?? && customerAddress.city != ''>
            <#assign addressLine2 = '${(customerAddress.city + ",")!""} ${(customerAddress.stateAbbr)!""} ${(customerAddress.postalCode)!""}'>
        </#if>
        <#assign customerAddress = '${(addressLine1 + "<br/>")!""} ${(addressLine2)!""}'>
     </#if>

    <#if businessAddress??>
        <#assign businessAddressLine1 = '${(businessAddress.address1)!""} ${(businessAddress.address2)!""}'>
        <#assign businessAddressLine2 = '${(businessAddress.city + ",")!""} ${(businessAddress.stateGeoCodeAlpha2)!""} ${(businessAddress.postalCode)!""}'>
        <#assign businessAppAddress = '${(businessAddressLine1 + "<br/>")!""} ${(businessAddressLine2)!""}'>
    </#if> 

    <div>
        <p>${.now?date?string.long!""}</p>
        </br>
        <#if isBusiness> 
            ${customer.partyName!""} <br/>
            ${businessName!""} <br/>
            ${businessAppAddress!""}

        <#else> 
            ${primaryApplicant.partyName!""} <br/>
            ${customerAddress!""}
        </#if>

        <p>Dear ${customer.partyName!""},</p>
        
        <#if isBusiness> 
            <p>Thank you for applying for the Beneficial State Bank Business card. Your account has been approved with a total credit line of $${creditLine!""}. Your cards will be ready to use after they are activated by calling the number found on the label on the front of your new cards. Please note that your credit card can be activated by used the last 4 digits of your TIN or SSN.
            </p>

            <p>The Beneficial State Bank Business card offers you a wide variety of benefits including but not limited to:
                <ul>
                    <li>A great low interest rate! The <b>ANNUAL PERCENTAGE RATE</b> may vary. As of February 15, 2020 the current <b>Annual Percentage Rate</b> is ${interestRateLabel!"-"}. The monthly periodic rate is ${monthlyPeriodicRate!"-"}%.
                    </li>
                    <li><b>0% Liability.</b> You are protected by our 0% liability when making purchases online or at any other merchant
                        location.
                    </li>
                </ul>
            </p>

            <p> You will receive you complete Credit Card Agreement that discloses the terms of our program with your credit card. Our Beneficial State Bank Privacy Notice can be found on our Bank’s website at www.beneficialstate.com. If you have any questions about your credit card account, please call Beneficial State Bank at <b>833-498-2465</b>. Thank you for choosing the Beneficial State Bank ${productName} Credit Card.
            </p>
        
        <#else> 
            <p>Thank you for applying for Beneficial State Bank Visa card. Your account has been approved with a total credit line of $${creditLine!""}. Your new card is on its way and will be ready to use after you activate it by following the instructions found on the
            label on the front of your new card. Your PIN (Personal Identification Number, for cash access at an ATM) will be mailed separately and will arrive a few days after your card(s).</p>

            <p>Beneficial State Bank’s Visa Chip card offers you a wide variety of benefits including but not limited to:
                <ul>
                    <li>A great low rate! The <b>ANNUAL PERCENTAGE RATE</b> may vary. As of February 15 2020 the current <b>Annual Percentage Rate</b> is ${interestRateLabel!"-"}. The monthly periodic rate is ${monthlyPeriodicRate!"-"}%.
                    </li>
                    <li><b>Manage your account online</b> eZCardInfo.com is an Internet tool you can use to access your account information, make payments, and opt for electronic statements and more. For more information go to www.ezcardinfo.com
                    </li>
                    <li>Immediate cash advance access at more than 250,000 Automated Teller Machines (ATMs) worldwide displaying the <b>Visa ATM logo</b>. Please note you can take cash advance withdrawals up to $500.00 daily, based on credit available. Individual ATMs
                    may have lower withdrawal limits.
                    <#if isVisaSignature>
                        <li>
                            Your card comes with reward points that can be redeemed for merchandise, travel and cash back. The terms related to rewards can be found at www.scorecardrewards.com. Please be sure to register at this website to review and
                            redeem your rewards.
                        </li>
                    </#if>
        
                </ul>
            </p>
        
            <p>You will receive you complete Credit Card Agreement that discloses the terms of our program with your credit card. Our Beneficial State Bank Privacy Notice can be found on our Bank’s website at www.beneficialstate.com. If you have any questions about your credit card account, please call Beneficial State Bank at <b>${customerServicePhoneNumber!"-"}</b>. Thank you for choosing the Beneficial State Bank ${productName!"-"} Credit Card.
            </p>
        </#if>

        </br>
        <p>Sincerely,</p>
        <p>Beneficial State Bank</p>
    </div>
</div>
