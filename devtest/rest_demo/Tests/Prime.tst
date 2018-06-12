<?xml version="1.0" ?>

<TestCase name="Prime" version="5">

<meta>
   <create version="10.1.0" buildNumber="10.1.0.283" author="admin" date="06/08/2018" host="NESJO02" />
   <lastEdited version="10.1.0" buildNumber="10.1.0.283" author="admin" date="06/08/2018" host="NESJO02" />
</meta>

<id>A10957356B1111E8BEF7FAAA20524153</id>
<Documentation>Put documentation of the Test Case here.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9LTEmbGlzYXY9MTAuMS4wICgxMC4xLjAuMjgzKSZub2Rlcz01NzY0NTAx</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

    <Node name="Set up a work field" log=""
          type="com.itko.lisa.utils.ParseTextContentNode" 
          version="1" 
          uid="B9331A926B1111E8BEF7FAAA20524153" 
          think="0" 
          useFilters="true" 
          quiet="true" 
          next="Print Pre-Step" > 

<text>PFRlc3RzPg0KICAgIDxUZXN0Pg0KICAgICAgICA8VGVzdF9WYWw+VGhpcyBpcyB0aGUgZmlyc3QgdmFsdWU8L1Rlc3RfVmFsPg0KICAgIDwvVGVzdD4NCiAgICA8VGVzdD4NCiAgICAgICAgPFRlc3RfVmFsPlRoaXMgaXMgdGhlIHNlY29uZCB2YWx1ZTwvVGVzdF9WYWw+DQogICAgPC9UZXN0Pg0KPC9UZXN0cz4=</text>
<propKey>fl_primeXml</propKey>
    </Node>


    <Node name="Print Pre-Step" log=""
          type="com.itko.lisa.test.UserScriptNode" 
          version="1" 
          uid="43BCC5F46B1511E8BEF7FAAA20524153" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="Subprocess" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assertion name: Any Exception Then Fail checks for: true is of type: Assert on Invocation Exception.</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<onerror>abort</onerror>
<language>BeanShell</language>
<copyProps>TestExecProps</copyProps>
<script>_logger.info( &quot;The value of the counter before calling subprocess is: {}&quot;,&#13;&#10;              testExec.getStateString(&quot;sub_CountOfOccurs&quot;, &quot;This value does not exist&quot;) );</script>
    </Node>


    <Node name="Subprocess" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="3511CDFF6B1311E8BEF7FAAA20524153" 
          think="0H" 
          useFilters="true" 
          quiet="true" 
          next="Print Post Step" > 

<Subprocess>C:\Temp\Test_Git\devtest\rest_demo\Tests\Sub.tst</Subprocess>
<fullyParseProps>false</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>fl_primeXml</key>
    <value>{{fl_primeXml}}</value>
    <name>&lt;&lt; description &gt;&gt;</name>
    </Parameter>
</Parameters>
<SaveProps>
<save>sub_CountOfOccurs</save>
</SaveProps>
    </Node>


    <Node name="Print Post Step" log=""
          type="com.itko.lisa.test.UserScriptNode" 
          version="1" 
          uid="106DB32E6B1511E8BEF7FAAA20524153" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="Output Log Message~1" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assertion name: Any Exception Then Fail checks for: true is of type: Assert on Invocation Exception.</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<onerror>abort</onerror>
<language>BeanShell</language>
<copyProps>TestExecProps</copyProps>
<script>_logger.info( &quot;The value of the counter after calling subprocess is: {}&quot;,&#13;&#10;              testExec.getStateString(&quot;sub_CountOfOccurs&quot;, &quot;This value does not exist&quot;) );</script>
    </Node>


    <Node name="Output Log Message~1" log=""
          type="com.itko.lisa.test.TestNodeLogger" 
          version="1" 
          uid="4C46F80F6B1311E8BEF7FAAA20524153" 
          think="500-1S" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

<log>Count of number of XML occurs is {{sub_CountOfOccurs}}</log>
    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="A1097E4B6B1111E8BEF7FAAA20524153" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="A1097E496B1111E8BEF7FAAA20524153" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="abort" > 

    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="A10957376B1111E8BEF7FAAA20524153" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


</TestCase>
