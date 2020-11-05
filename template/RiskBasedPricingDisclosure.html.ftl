<#assign customerAddress = '${(customerAddress.address1)!""} ${(customerAddress.address2 + "<br/>")!""} ${(customerAddress.city + ",")!""} ${(customerAddress.stateAbbr)!""} ${(customerAddress.postalCode)!""}'>

<div>
  <style>
      .header {
        font-weight: bold;
        text-align: center;
        margin-bottom: 1em;
      }

      .flexRow {
          display: flex;
          flex-direction: row;
      }

      .spaceBetween {
        display: flex;
        flex-direction: row;
        justify-content: space-between;
        margin-bottom: 1em;
      }

      .table, td {
        border: 1px solid black;
        border-collapse: collapse;
        padding: 10px;
      }
      .table td:first-child {
        background-color: #e7e3e7;
      }

      .noBorder td {
        border: none;
        padding: 5px;
      }
      .noBorder td:first-child {
        background-color: transparent;
      }

      .contact {
        padding: 5px 10px;
      }

      tr.header-row td.white-on-black {
        background: black;
        color: white;
        font-size: 120%;
      }

      .bar-graph {
        max-width: 500px;
        width: 80%;
        display: block;
        margin: auto;
      }
  </style>

  <p>Beneficial State Bank<br />
    2002 NE MLK Jr. Blvd.<br />
    Portland, OR 97212</p>

  <div class="spaceBetween">
    <div>
      ${applicantName!"-"} <br/>
      ${customerAddress!""}
    </div>
    <div>Application Number: ${orderId!"-"}</div>
  </div>

  <div class="header">
    Your Credit Score and the Price You Pay for Credit
  </div>
  <p>You are receiving this notice because we recently retried a credit bureau report and used that information to approve a
    loan that you applied for. If you did not apply for a loan, please contact us at 888-326-2265.</p>

  <table class="table">
    <tbody>
      <tr class="header-row">
        <td colspan="2" class="white-on-black">Your Credit Score</td>
      </tr>
      <tr>
        <td>Your Credit Score</td>
        <td>
          <table class="noBorder">
            <tr>
              <td><b>${applicantCreditScore!"-"}</b></td>
              <td></td>
            </tr>
            <tr>
              <td>Source: <b>Experian</b></td>
              <td>Date: <b>${dateCreditPulled!"-"}</b></td>
            </tr>
          </table>
        </td>
      </tr>
      <tr class="header-row">
        <td colspan="2" class="white-on-black">Understanding Your Credit Score</td>
      </tr>
      <tr>
        <td>What you should know about credit scores</td>
        <td>Your credit score is a number that reflects the information in your credit report. Your credit report is a record of your credit history. It includes information about whether you pay your bills on time and how much you owe to creditors. Your credit score can change, depending on how your credit history changes.</td>
      </tr>
      <tr>
        <td>How we use your credit score</td>
        <td>Your credit score can affect whether you can get a loan and how much you will have to pay for that loan.</td>
      </tr>
      <tr>
        <td>The range of scores</td>
        <td>Scores range from a low of 300 to a high of 850. Generally, the higher your score, the more likely you are to be offered better credit terms.</td>
      </tr>
      <tr>
        <td>How your score compares to the scores of other consumers</td>
        <td><img src="https://assets.ccos.mkdecision.com/beneficialsb/store/ExperianFicoBarGraph.png" alt="credit score distribution bar graph" class="bar-graph" /></td>
      </tr>
      <tr>
        <td>Key factors tha adversely affected your credit score</td>
        <td>
          <ul>
            <#list scoreFactors as scoreFactor>
                <li>${scoreFactor}</li>
            </#list>
          </ul>
        </td>
      </tr>
      <tr>
      <tr class="header-row">
        <td colspan="2" class="white-on-black">Checking Your Credit Report</td>
      </tr>
      <tr>
        <td>What if there are mistakes in your credit report?</td>
        <td>You have a right to dispute any inaccurate information in your credit report. If you find mistakes on your credit report, contact the consumer reporting agency.<br />It is a good idea to check your credit report to make sure the information it contains is accurate.</td>
      </tr>
      <tr>
        <td>How can you obtain a copy of your credit report?</td>
        <td><p>Under federal law, you have the right to obtain a free copy of your credit report from each of the nationwide consumer reporting agencies once a year.</p>
          To order your free annual credit report -<br />
          <ul>
            <li>By telephone: Call toll-free: (800) 831-5614</li>
            <li>On the web: Visit <a href='https://www.annualcreditreport.com/'>www.annualcreditreport.com</a></li>
            <li>By mail: Mail your completed Annual Credit Report Request Form (which you canobtain from the Federal Trade Commission’s web site at http://www.ftc.gov/bcp/conline/include/requestformfinal.pdf) to:<br />
              Annual Credit Report Request Service<br />
              P.O. Box 105281 Atlanta, GA 30348-5281</li>
          </ul>
        </td>
      </tr>
      <tr>
        <td>How can you get more information?</td>
        <td>For more information about credit reports and your rights under federal law, visit the Federal Reserve Board’s web site at www.federalreserve.gov, or the Federal Trade Commission’s web site at www.ftc.gov.</td>
      </tr>
    </tbody>
  </table>
</div>
