<?xml version="1.0" ?>

<TestCase name="Sub" version="5">

<meta>
   <create version="10.1.0" buildNumber="10.1.0.283" author="admin" date="06/08/2018" host="NESJO02" />
   <lastEdited version="10.1.0" buildNumber="10.1.0.283" author="admin" date="06/08/2018" host="NESJO02" />
</meta>

<id>806EAC186B1211E8BEF7FAAA20524153</id>
<Documentation>Put documentation of the Test Case here.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj0xMC4xLjAgKDEwLjEuMC4yODMpJm5vZGVzPTk1MDM2NjY2</sig>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>fl_primeXml</key>
    <value>NA</value>
    <name>&lt;&lt; description &gt;&gt;</name>
    </Parameter>
</initState>

<resultState>
    <Parameter>
    <key>LIVE_INVOCATION_PORT</key>
    <value></value>
    <name>Set in project.config configuration</name>
    </Parameter>
    <Parameter>
    <key>LIVE_INVOCATION_SERVER</key>
    <value></value>
    <name>Set in project.config configuration</name>
    </Parameter>
    <Parameter>
    <key>fl_primeXml</key>
    <value></value>
    <name>Set 1st in Set up a work field</name>
    </Parameter>
    <Parameter>
    <key>lisa.Count Number of Entries in List.rsp</key>
    <value></value>
    <name>Set 1st in Count Number of Entries in List</name>
    </Parameter>
    <Parameter>
    <key>lisa.Count Number of Entries in List.rsp.time</key>
    <value></value>
    <name>Set 1st in Count Number of Entries in List</name>
    </Parameter>
    <Parameter>
    <key>lisa.Output Log Message.rsp</key>
    <value></value>
    <name>Set 1st in Output Log Message</name>
    </Parameter>
    <Parameter>
    <key>lisa.Output Log Message.rsp.time</key>
    <value></value>
    <name>Set 1st in Output Log Message</name>
    </Parameter>
    <Parameter>
    <key>lisa.Set up a work field.rsp</key>
    <value></value>
    <name>Set 1st in Set up a work field</name>
    </Parameter>
    <Parameter>
    <key>lisa.Set up a work field.rsp.time</key>
    <value></value>
    <name>Set 1st in Set up a work field</name>
    </Parameter>
    <Parameter>
    <key>lisa.vse.execution.mode</key>
    <value></value>
    <name>Set in project.config configuration</name>
    </Parameter>
    <Parameter>
    <key>sub_CountOfOccurs</key>
    <value></value>
    <name>Set 1st in Count Number of Entries in List</name>
    </Parameter>
</resultState>

<deletedProps>
</deletedProps>

    <Node name="Count Number of Entries in List" log=""
          type="com.itko.lisa.test.NoTransNode" 
          version="1" 
          uid="CFAFFA776B1211E8BEF7FAAA20524153" 
          think="0" 
          useFilters="true" 
          quiet="true" 
          next="end" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.xml.FilterXMLXPath">
        <valueToFilterKey>fl_primeXml</valueToFilterKey>
<prop>sub_CountOfOccurs</prop>
<xpathq>count(/Tests/Test/Test_Val)</xpathq>
      </Filter>

    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="806EAC1D6B1211E8BEF7FAAA20524153" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="806EAC1C6B1211E8BEF7FAAA20524153" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="abort" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="806EAC1B6B1211E8BEF7FAAA20524153" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


</TestCase>
