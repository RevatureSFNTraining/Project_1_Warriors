<apex:page docType="html-5.0" controller="MaintenanceRequestController" sidebar="false">
    <apex:form >
      <apex:pageBlock title="Maintenance Request Details">
      <apex:pageBlockTable value="{!mRList}" var="mrs" id="list">
		<apex:column value="{!mrs.name}"/>
        <apex:column value="{!mrs.Maintenance_Type__c}"/>
        <apex:column value="{!Preferred_Date_of_Service__c}"/> 
      </apex:pageBlockTable>
        </apex:pageBlock>
      <apex:pageBlock title= "Search Criteria">
      <apex:pageBlockSection>
         <apex:input label="Start Date:" value="{!PrefDateStart}" type="date"/>
          <apex:input label="End Date:" value="{!PrefDateEnd}" type="date"/>
      </apex:pageBlockSection>
      <apex:commandButton value="Search by Date Range" action="{!SearchByDateRange}" />
      </apex:pageBlock>
    </apex:form>
</apex:page>