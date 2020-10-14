<#if customerAddress1 != ''>
    <#assign addressLine1 = '${(customerAddress1)!""} ${(customerAddress2)!""}'>
</#if>
<#if customerCity != ''>
    <#assign addressLine2 = '${(customerCity + ",")!""} ${(customerState)!""} ${(customerPostalCode)!""}'>
</#if>
<#assign customerAddress = '${(addressLine1 + "<br/>")!""} ${(addressLine2)!""}'>
<#if dateCreditPulled?? && creditProfileStatus != 'FileStatusFrozen'>
    <#assign showCreditPulled = true>
</#if>

<div>
    <style>
        .content {
            margin: auto;
        }

        .applicationInfo {
            display: flex;
            justify-content: flex-end;
            margin-right: 5em;
        }

        .marginLeft {
            margin-left: 50px;
        }
    </style>
    <div class="content">
        <p>
            Beneficial State Bank<br />
            2002 Martin Luther King Jr Blvd <br />
            Portland, OR 97212
        </p>
        <br />
        <p>
            ${customerFullName!""} <br />
            ${customerAddress!""}
        </p>

        <br />
        <div class="applicationInfo">
            <p>
                Date of Notice: ${adverseActionDate!""}<br />
                Date of Application: ${(applicationDate?date)!"-"}<br />
                Application Number: ${orderId!"-"}
            </p>
        </div>

        <p>
            Thank you for your recent application for credit with Beneficial State Bank. Your request was
            carefully considered, and we regret to inform you that we are unable to approve your
            request at this time due to the following reason(s):
        </p>

        <#if adverseActionReasons??>
            <#list adverseActionReasons>
                <ul>
                    <#items as adverseActionReason>
                        <li>${adverseActionReason!""}</li>
                    </#items>
                </ul>
            </#list>

        </#if>

        <#if showCreditPulled??>
            <p>Our credit was based in whole or part on information obtained in a report from the
                consumer reporting agency listed below. Under the Fair Credit Reporting Act, you
                have a right to know the information contained in your credit file at the consumer
                reporting agency. The reporting agency played no part in our decision and is unable
                to supply specific reasons why we have denied credit to you. You also have a right
                to a free copy of your report from the reporting agency, if you request it no later
                than 60 days after you receive this notice. In addition, if you find that any
                information contained in the report you receive is inaccurate or incomplete, you
                have the right to dispute the matter with the reporting agency:</p>

            <p class="marginLeft">
                Experian <br />
                701 Experian Parkway <br />
                Allen, TX 75013 <br />
                (800) 831-5614
            </p>

            <p>We also obtained your credit score from the consumer reporting agency and used it in
                making our credit decision. Your credit score is a number that reflects the
                information in your consumer report. Your credit score can change, depending on how
                the information in your consumer report changes.</p>

            <p class="marginLeft">
                Applicant's Credit Score: ${applicantCreditScore!""} <br />
                Date: ${dateCreditPulled!""} <br />
                Scores range from a low of 280 to a high of 850. <br />
                Key Factors that adversely affected your credit score: <br />

                <#list creditScoreFactors>
                    <ul class="marginLeft">
                        <#items as creditScoreFactor>
                            <li>${creditScoreFactor}</li>
                        </#items>
                    </ul>
                </#list>
            </p>

            <p>If you have any questions, please contact us at Beneficial State Bank Attn: Credit
                Cards 2002 Martin Luther King Jr Blvd Portland, OR 97212. <br /></p>
        </#if>

        <p>Notice: The Federal Equal Credit Opportunity Act prohibits creditors from discriminating
            against credit applicants on the basis of race, color, religion, national origin, sex,
            marital status, age (provided the applicant has the capacity of enter into a binding
            contract); because all or part of the applicant’s income derives from any public
            assistance program; or because the applicant has in good faith exercised any right under
            the Consumer Credit Protection Act. The federal agency that administers compliance with
            this law concerning this creditor is the FDIC Consumer Response Center, 1100 Walnut
            Street, Box #11, Kansas City, MO 64106.</p>
    </div>
</div>
