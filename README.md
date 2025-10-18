# Disable Auto Reboots

In Windows 11, when there is an upcoming Windows Update,
windows may decide to reboot your computer when it wants, without any warning.

This repository disable Windows 11 from automatically rebooting,
and gives you back the control to decide yourself when to Update the computer.

Special thanks to Phil at [PRR Computers](https://www.youtube.com/@Prrcomputers) in
his [YouTube video](https://www.youtube.com/watch?v=fuhfJDXsj38) where he
found the method to bypass this issue.

This repository is based on his solution and slightly reordered it,
for easier maintainability.

## How does this work?

In Windows 11 "Settings" --> "Windows Update" --> "Advanced options",
it is possible to define the "Active hours" of your computer.
In this time range, Windows is committed not to Update the computer,
and thus not rebooting it.

The basic idea is to keep updating the "Active hours" of your computer so
the current time will always be within the "Active hours".
In this case, the Windows Update won't be able to be run and reboot the
computer on its own.

So this repository defines a script to update the "Active hours"
(via Windows Registry) to ensure the current time is always within the
"Active hours". And then we call that script hourly as a background task.

<img width="2108" height="1637" alt="Image" src="https://github.com/user-attachments/assets/7651f6ac-f008-4069-87ff-5f3dd030e0d4" />

## Install

> **Requirements:** Windows 11 (obviously)

In PowerShell, run as administrator:

```ps1
.\Install.ps1
```

## Uninstall

In PowerShell, run as administrator:

```ps1
.\Uninstall.ps1
```
