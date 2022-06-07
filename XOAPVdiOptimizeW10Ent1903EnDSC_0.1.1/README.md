# Redirect to Microsoft Documentation and GitHub Repository

Although the Windows 10 operating system is very well tuned out of the box, there are opportunities for you to refine it further specifically
for the corporate Microsoft Virtual Desktop Infrastructure (VDI) environment.

<https://docs.microsoft.com/en-us/windows-server/remote/remote-desktop-services/rds-vdi-recommendations>
<https://docs.microsoft.com/en-us/windows-server/remote/remote-desktop-services/rds_vdi-recommendations-1903>
<https://github.com/TheVDIGuys/Windows_10_VDI_Optimize/tree/master/1903>

## Information about the implemented and not implemented parts of the TheVDIGuys' script

- WindowsMediaPlayer will be removed
- AppXPackages will be removed
- ScheduledTasks will be disabled (except for....)
  - "PerformRemediation" in "Microsoft\Windows\WaasMedic" will not be disabled
  - "sihpostreboot" in "Microsoft\Windos\WindowsUpdate" will not be disabled
  - "syspartRepair" in "Microsoft\Windows\Chkdsk" will not be disabled
  - "UpdateModelTask" in "Microsoft\Windows\UpdateOrchestrator" will not be disabled
  - "USO_UXBroker" in "Microsoft\Windows\UpdateOrchestrator" will not be disabled
- OneDrive will be uninstalled
- Autologgers will be disabled
- Services will be disabled (with RegKeys)
- NetworkOptimization (only RegKeys)

DefaultUserSettings (due to UserContext) and DiskCleanRegSettings are not implemented.

### Updated scheduled Tasks

Scheduled Tasks will be disabled via DSC Resource ScheduleTask instead of DSC Resource Script