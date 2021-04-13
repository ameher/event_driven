Import-AzAutomationRunbook -Path .\usercode\Write-HelloWorld.ps1 -ResourceGroup "shared-rg" -AutomationAccountName "avm-aa" -Type PowerShellWorkflow
Publish-AzAutomationRunbook -AutomationAccountName "avm-aa" -Name "Write-HelloWorld" -ResourceGroupName "shared-rg"
Start-AzAutomationRunbook -ResourceGroupName "shared-rg" -AutomationAccountName "avm-aa" -Name "Write-HelloWorld"