<html>
<head>
    <style>
        .contentBody {
            margin: auto;
            width: 600px;
            padding: 24px;
            font-size: 16px;
            line-height: 24px;
        }
        .header {
            padding: 24px 0 8px 0;
            border-bottom: 1px solid #d3d4d8;
        }
        .headerImage {
            max-width: 300px;
            max-height: 75px;
            width: auto;
            height: auto;
        }
        .background {
            margin: auto;
            background-color: white;
            font-family: Trebuchet MS;
        }
        .salutation {
            font-size: 0.825rem;
        }
        .applicantName {
            font-weight: bold;
            font-size: 24px;
            color: #21314d;
        }
        .button {
            background-color: #21314d;
            border-radius: 10px;
            padding: 8px 16px;
            font-size: 20px;
            color: white !important;
            text-align: center;
            text-decoration: none;
            display: inline-block;
        }
        .footer {
            border-top: 1px solid #d3d4d8;
        }
        @media only screen and (max-width: 1024px) {
            .contentBody {
                width: 85%;
            }
        }
    </style>
</head>

<body class="background">
    <header class="header contentBody">
        <img src="${storeLogo}" alt="Bank Logo" class="headerImage" />
    </header>

    <div class="contentBody">
        <p class="salutation">
            Application ID: ${orderId!"-"} <br />
            Date: ${.now?date?string.long}
        </p>

        <p class="applicantName">
            Dear <#if customerParty.person??> ${customerParty.person.firstName?trim!""}<#else> ${customer.partyName?trim!""}</#if>,
        </p>

        <p>
            Your online Visa credit card application has been successfully submitted!
            <#if isBusiness>  
            Our underwriters will get right to work on processing your request and may contact you again shortly for additional information. Thank you for supporting your community bank. We look forward to serving
            changemakers like you!

            <#else>
            Our underwriters will get right to work on processing your request. Thank you for supporting your community bank and watch for additional correspondence from us when a decision has been made. We look
            forward to serving changemakers like you!
            </#if>
        </p>

        <p>
            Sincerely, <br />
            Bank Cards Department
        </p>

    </div>

    <footer class="footer contentBody">
        <p>
            Beneficial State Bank <br />
            1438 Webster St. Suite 100, Oakland CA 94612 <br />
            888.326.2265 <br />
            support@beneficialstate.com <br />
            www.beneficialstatebank.com
       </p>
   </footer>
</body>

</html>