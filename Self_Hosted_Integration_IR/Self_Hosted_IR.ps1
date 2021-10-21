function Create-Self-Hosted {
    param (
        [string]$Self_Hosted_IR_Name = "Test-self-hosted-ir-02",
        [string]$Resource_Group_Name = "arm_rg",
        [string]$Workspace_Name = "syn-m-str-pe",
        [string]$Self_Hosted_IR_Type = "SelfHosted",
        [string]$SubscriptionName = "MF_Azure_Subscription_1000"
    )
    Set-AzSynapseIntegrationRuntime -Name $Self_Hosted_IR_Name -ResourceGroupName $Resource_Group_Name -workspacename $Workspace_Name -Type $Self_Hosted_IR_Type
    $key = Get-AzSynapseIntegrationRuntimeKey -Name $Self_Hosted_IR_Name -ResourceGroupName $Resource_Group_Name -workspacename $Workspace_Name
    
}



