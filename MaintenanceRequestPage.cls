<apex:page docType="html-5.0" controller="MNMaintenanceRequestController" sidebar="false">
    <apex:form >
      <apex:pageBlock title="Maintenance Request Details">
      <apex:pageBlockTable value="{!mRList}" var="mrs" id="list">
		<apex:column value="{!mrs.name}"/>
        <apex:column value="{!mrs.Maintenance_Type__c}"/>
        <apex:column value="{!mrs.Preferred_Date_of_Service__c}"/>
        <apex:column value="{!mrs.Job_Scheduled__c}"/>
        <apex:column headerValue="Related Vendor Quotes">
        	<apex:dataList value="{!mrs.Vendor_Quotes__r}" var="vq">
        		<apex:outputField value="{!vq.Name}" />
                <apex:outputField value="{!vq.Hourly_Rate__c}" />
            </apex:dataList>
        </apex:column> 
      </apex:pageBlockTable>
        </apex:pageBlock>
      <apex:pageBlock title="Search Maintenance Requests">
      <apex:commandButton value="Reset Search" action="{!ResetSearch}"/>
      <apex:pageBlockSection title="Preferred Date of Service Range">
         <apex:input label="Start Date:" value="{!PrefDateStart}" type="date"/>
          <apex:input label="End Date:" value="{!PrefDateEnd}" type="date"/>
      <apex:commandButton value="Search by Date Range" action="{!SearchByDateRange}" />
      </apex:pageBlockSection>
      <apex:pageBlockSection title="Jobs Scheduled/NotScheduled" >
      <apex:commandButton value="Search by Jobs Not Scheduled" action="{!SearchByJobsNotScheduled}" />
      <apex:commandButton value="Search by Jobs Scheduled" action="{!SearchByJobsScheduled}" />
      </apex:pageBlockSection>
      </apex:pageBlock>
    </apex:form>
</apex:page>