---
title:			Epitech Dump
subtitle:       Rigid like the stone
module:			none
branding:		dump
author:	   		Theodore Gozard
version:		2.0.0
---

<!-- # Before start -->

<br>
<br>
<br>

![Warning](images/rock-warning.png "Warning"){width=50%}

::: note
**You are going to delete everything on your computer. If you forgot to backup some data please ask an APE. Once started, it will be too late**
:::

<br>
<br>
<br>
<br>

![rock](images/stone.png "rock"){width=40%}

::: center
*Don't forget, keep the stone in your pocket*
:::

\newpage

# 0. Disable Secure Boot

You have to disable secure boot. First you need to go in your BIOS settings. When you power on your computer, press a specific key to enter the bios menu. Depending on your computer's brand, this key may varies.

:::tip
You have to spam the key while the computer is powering up until the boot menu shows up
:::


| **Brand**         | **BIOS/UEFI Setup Key** |
|-------------------|-------------------------|
| **Framework**     | F2                      |
| **Acer**          | Del or F2               |
| **ASUS**          | Del or F2               |
| **Dell**          | F2                      |
| **HP**            | Esc → F10               |
| **Lenovo**        | F1 or F2                |
| **MSI**           | Del                     |
| **Samsung**       | F2                      |
| **Gigabyte**      | Del                     |


Secure boot is often in security or boot section, search for it and click to **disable it**

&nbsp;

![secure-boot](images/secure-boot.jpeg "secure-boot"){width=65%}

&nbsp;

::: note
If you have any question, ask an **APE**
:::

\newpage

# 1. Boot on USB stick

To install an operating system on your computer from a USB stick, you first need to select the usb stick as a boot device. When powering your computer, you need to press a specific key to enter the boot menu. Depending on your computer's brand, this key may change.

:::tip
You have to spam the key while the computer is powering up until the boot menu shows up
:::

| **Brand**         | **Boot Menu Key**       |
|-------------------|-------------------------|
| **Framework**     | F12                     |
| **Acer**          | F12 (enable in BIOS)    |
| **ASUS**          | Esc or F8               |
| **Dell**          | F12                     |
| **HP**            | Esc → F9                |
| **Lenovo**        | F12 or Fn + F12         |
| **MSI**           | F11                     |
| **Samsung**       | Esc or F12              |
| **Gigabyte**      | F12                     |

In the boot menu search the USB stick and press enter.

<!-- :::warning
If you get the following screen when booting on the USB stick, go to __[Enroll Ventoy Secure Boot Key](#enroll-ventoy-secure-boot-key)__
<br>
![ventoy-key-violation](images/ventoy/key-violation.png "ventoy-key-violation"){width=60%}
::: -->

You can now choose Windows or Ubuntu depending on which operating system you want to install

&nbsp;

![Ventoy](images/ventoy.png "Ventoy"){width=65%}

\newpage

# 2. Windows

Choose **Winboot mode** and press Enter

&nbsp;

![ubuntu boot mode](images/ubuntu-boot-mode.png "ubuntu boot mode"){width=55%}

&nbsp;

Choose language and timezone

&nbsp;

:::center
![ubuntut boot mode](images/windows/language.png "ubuntu boot mode"){width=460px}
:::

\newpage

Choose the correct **keyboard layout** for you (Azerty or Qwerty in most case)
&nbsp;

:::center
![ubuntut boot mode](images/windows/keyboard.png "ubuntu boot mode"){width=470px}
:::

:::note
At this step **call an APE**
:::

:::center
![ubuntut boot mode](images/windows/disk.png "ubuntu boot mode"){width=470px}
:::

&nbsp;

Choose your name

:::center
![ubuntut boot mode](images/windows/name.png "ubuntu boot mode"){width=470px}
:::

&nbsp;

Choose your password

&nbsp;

:::center
![ubuntut boot mode](images/windows/password.png "ubuntu boot mode"){width=470px}
:::

\newpage

Choose 3 security questions

&nbsp;

:::center
![ubuntut boot mode](images/windows/sec-question.png "ubuntu boot mode"){width=470px}
:::

&nbsp;

## Post installation

Once logged into Windows, connect to the **IONIS Wifi**

**\textcolor{orange}{Username}** : *Epitech email*
**\textcolor{orange}{Password}** : *Epitech password*

:::note
If you can't connect to the wifi, ask an **APE**
:::

Once everything is finished and working, you can go the [Ubuntu installation page](#ubuntu)

\newpage

# 3. Ubuntu

:::tip
If you forgot how to **enter** the **boot menu**, go back to the __[Task 1 (boot on USB stick)](#boot-on-usb-stick)__
:::

Choose **Boot in normal mode** and press Enter

&nbsp;

![ubuntut boot mode](images/ubuntu-boot-mode.png "ubuntu boot mode"){width=60%}

&nbsp;

Select **Try or Install Ubuntu**

&nbsp;

![grub install](images/ubuntu/install-grub.png "grub install"){width=70%}

\newpage

In language selection, select **English** then click next
&nbsp;

:::center
![ubuntu-language](images/ubuntu/language.png "ubuntu-language"){width=470px}
:::

&nbsp;

If you need accessibility, you can setup it here

&nbsp;

:::center
![ubuntu-language](images/ubuntu/accessibility.png "ubuntu-language"){width=470px}
:::

\newpage

Choose your keyboard layout. In most case it will be French, if you have a qwerty keyboard select English

&nbsp;

:::center
![ubuntu-language](images/ubuntu/keyboard.png "ubuntu-language"){width=470px}
:::

&nbsp;

When you reach the internet page, click on the right top corner of the screen
&nbsp;

:::center
![ubuntu-settings-box](images/ubuntu/settings-box.png "ubuntu-settings-box"){width=550px}
:::

\newpage

It opens a box where you can find a gear (:gear:), click it to open the settings menu
&nbsp;

:::center
![ubuntu-settings](images/ubuntu/settings.png "ubuntu-settings"){width=500px}
:::

&nbsp;

Now you are in the wifi settings, select **IONIS** wifi and fill out the form:
&nbsp;

::: columns
::: {.column width="40%"}
**\textcolor{orange}{Wifi name}** : IONIS
**\textcolor{orange}{Wi-Fi Security}** : WPA & WPA2 Entreprise
**\textcolor{orange}{Authentication}** : Protected EAP (PEAP)
**\textcolor{orange}{No CA certificate is required}** : Check
**\textcolor{orange}{PEAP Version}** : Automatic
**\textcolor{orange}{Inner authentication}** : MSCHAPv2
**\textcolor{orange}{Username}** : *Epitech email*
**\textcolor{orange}{Password}** : *Epitech password*
:::
::: {.column width="60%"}
![ubuntu-wifi](images/ubuntu/IONIS-wifi-border.png "ubuntu-wifi"){width=290px}
:::
:::

\newpage

Choose **Install Ubuntu**
&nbsp;

:::center
![ubuntu install](images/ubuntu/install.png "ubuntu installer install"){width=470px}
:::

&nbsp;


Choose **Automated with autoinstall file**
&nbsp;

:::center
![ubuntu interactive](images/ubuntu/autoinstall.png "ubuntu installer interactive"){width=470px}
:::

\newpage

Enter the following url: **\textcolor{orange}{https://autoinstall.dump.epistone.fr}**
&nbsp;

:::center
![ubuntu interactive](images/ubuntu/autoinstall-url.png "ubuntu installer interactive"){width=470px}
:::

&nbsp;

Choose your keyboard layout, in most case it will be French. If you have a qwerty keyboard select English

&nbsp;

:::center
![ubuntu interactive](images/ubuntu/keyboard.png "ubuntu installer interactive"){width=470px}
:::

\newpage

::: note
Call an **APE** before choosing a disk installation
&nbsp;

:::center
![u24-choose-partition-size](images/ubuntu/disk.png "u24-choose-partition-size"){width=470px}
:::
&nbsp;
:::

Choose **no encryption**

&nbsp;

:::center
![u24-choose-partition-size](images/ubuntu/encryption.png "u24-choose-partition-size"){width=470px}
:::

&nbsp;

Create your local account for Ubuntu

&nbsp;

:::center
![u24-choose-partition-size](images/ubuntu/account.png "u24-choose-partition-size"){width=470px}
:::

&nbsp;

Everything is set up, you can click install and wait until installation is complete :hourglass_flowing_sand:

&nbsp;

:::center
![u24-choose-partition-size](images/ubuntu/last-install.png "u24-choose-partition-size"){width=470px}
:::

&nbsp;

Installation is finished, you can now reboot and remove the USB key

&nbsp;

:::center
![u24-choose-partition-size](images/ubuntu/install-finish.png "u24-choose-partition-size"){width=470px}
:::

\newpage

# 4. Alpine

:::tip
If you forgot how to **boot** on the **usb key**, go back to the __[Task 1 (boot on USB stick)](#boot-on-usb-stick)__
:::

Choose **\textcolor{orange}{Alpine}** and press *Enter*, then choose **Boot in normal mode** and press *Enter*

When you arrive on Alpine iso image, you can type **root** and press *Enter* to login

&nbsp;

:::center
![u24-choose-partition-size](images/alpine/login-root.png "u24-choose-partition-size"){width=450px}
:::

&nbsp;

Next you have to identify the disk partition where you will install Alpine linux, run the following command to list your disk's partitions:

```terminal
fdisk -l
```

&nbsp;

:::center
![u24-choose-partition-size](images/alpine/partition-border.png "u24-choose-partition-size"){width=450px}
:::

&nbsp;

The first rectangle is the disk. In our case **\textcolor{orange}{sda}**, but it can be **\textcolor{orange}{nvme0n1}**.
The second rectangle shows the last partition of your disk. In our case **\textcolor{orange}{6}**, it will normally be the same for you.

In this example our install partition will be: **\textcolor{orange}{sda6}** or **\textcolor{orange}{nvme0n1p6}** if our disk is **nvme0n1**

You will have to put this string at the end of the following command and press *Enter*:

```terminal
wget -O - "https://stumper.dump.epistone.fr" | cat > dump.sh && sh dump.sh nvme0n1p6
```

After script launch, you must enter your **Epitech email address and password**

&nbsp;

:::center
![u24-choose-partition-size](images/alpine/dump.png "u24-choose-partition-size"){width=470px}
:::

&nbsp;

:::note
If you have any doubt, do not hesitate to call an **APE**
:::

If you see a **green rectangle** indicating installation is complete, you can type ”reboot” and press the Enter key and boot into **Ubuntu**

Once you are login into Ubuntu, **open a terminal** and run the following command:

```terminal
sudo update-grub
```

&nbsp;

:::center
![u24-choose-partition-size](images/ubuntu/update-grub.png "u24-choose-partition-size"){width=470px}
:::

&nbsp;

:::warning
You need to have an **Github account** before passing to the next step
:::


You can now **reboot** into **Alpine** and remove the USB key

&nbsp;

:::center
![u24-choose-partition-size](images/alpine/grub.png "u24-choose-partition-size"){width=470px}
:::

\newpage

To login into Alpine:

**Username**: your Alpine username is your Epitech email address without the @epitech.eu domain.
For example my epitech email address is theodore2.gozard@epitech.eu, so my Alpine username is theodore2.gozard

**Password**: your Alpine password is your Epitech password

After login, run the following command:

```terminal
wget -O - "https://ssh.dump.epistone.fr" | bash
```

&nbsp;

:::center
![u24-choose-partition-size](images/alpine/ssh-key.png "u24-choose-partition-size"){width=470px}
:::

&nbsp;

On your phone, go to **\textcolor{orange}{https://github.com/login/device}**, login with your Github account and type your
one-time code

\newpage

# 5. Epitech tools

Now you want to discover and log into the most important tools that we use at Epitech, first boot on **Ubuntu**

## Intranet

![epitech-logo](images/logo/epitech-logo.png "epitech-logo"){width=10%}

Go on **[Intranet](my.epitech.eu)** *(my.epitech.eu)* in a web browser. Then click the **Epitech Account Office 365** button to log in. You have to use your **Epitech email and password**.

## Outlook (Office 365)

![outlook-logo](images/logo/outlook-logo.png "outlook-logo"){width=10%}

At Epitech we use Outlook for emails. It's very important that you check your emails everyday because a lots of important information will be given via mail. Go to **[Outlook](https://outlook.office.com/mail/)** *(outlook.office.com)*, you should already be logged in !

## Teams

![teams-icon](images/logo/teams-icon.png "teams-icon"){width=10%}

Teams is a Microsoft application for messaging. If you are not at school, it's your only way (with mail) for contacting an **APE**. Teams is already installed on your machine. Launch it and login with your **Epitech email address and password**

## Epitech Github Organisation

![github-logo](images/logo/github.png "github-logo"){width=10%}

:::tip
If you don't have a GitHub account, create one first on **[create a Github account](https://github.com/signup)** *(github.com/signup)*
:::

You need to join the Epitech Github organisation, click on the following link : **[Epitech Organisation](https://github.com/orgs/EpitechPGE1-2026/sso)**
*(github.com/orgs/EpitechPGE1-2026/sso)*

\newpage

<!-- # Epitech Wifi

**\textcolor{orange}{SSID}** : IONIS
**\textcolor{orange}{Wi-Fi Security}** : WPA & WPA2 Entreprise
**\textcolor{orange}{Authentication}** : Protected EAP (PEAP)
**\textcolor{orange}{No CA certificate is required}** : Check
**\textcolor{orange}{PEAP Version}** : Automatic
**\textcolor{orange}{Inner authentication}** : MSCHAPv2
**\textcolor{orange}{Username}** : *Epitech email*
**\textcolor{orange}{Password}** : *Epitech password*

<br>
![u24-desktop-settings](images/ubuntu/desktop-settings.png "u24-desktop-settings"){width=60%}

<br>

::: center
On the **top right corner**, click on the **wrench** and go to **Wifi settings**
:::

<br>
![IONIS-wifi](images/ubuntu/IONIS-wifi.png "IONIS-wifi"){width=30%}

<br>

::: center
Select **IONIS Wifi** and fill the form with the correct informations
::: -->

<!-- # Enroll Ventoy Secure Boot Key

If you see this screen, it means you need to enroll Ventoy secure boot key to allow your computer to run Ventoy and secure boot together. So the first step is to press enter

<br>
![ventoy-key-violation](images/ventoy/key-violation.png "ventoy-key-violation"){width=65%}

<br>
<br>

**Press any key** to perform MOK management and enroll a key

<br>
![ventoy-perform-mok-management](images/ventoy/perform-mok-management.png "ventoy-perform-mok-management.png"){width=65%}

<br>
<br>

Select **Eroll key from disk**

<br>
![ventoy-enroll-key-from-disk](images/ventoy/enroll-key-from-disk.png "ventoy-enroll-key-from-disk"){width=65%}

<br>
<br>

Select the folder **VENTOYEFI**

<br>
![ventoy-select-VTOYEFI-dir](images/ventoy/select-VTOYEFI-dir.png "ventoy-select-VTOYEFI-dir"){width=65%}

\newpage

Select **ENROLL_THIS_KEY_IN_MOKMANAGEMENT.cert**

<br>
![ventoy-select-key](images/ventoy/select-key.png "ventoy-select-key"){width=65%}

<br>
<br>

Click on **Continue**

<br>
![ventoy-continue-after-key](images/ventoy/continue-after-key.png "ventoy-continue-after-key"){width=65%}

\newpage

Select **Yes** to enroll the key

<br>
![ventoy-confirm-enroll-key](images/ventoy/confirm-enroll-key.png "ventoy-confirm-enroll-key"){width=65%}

<br>
<br>

You can now **Reboot** and continue where you stopped !

<br> -->
<!-- ![ventoy-reboot](images/ventoy/ventoy-reboot.png "ventoy-reboot"){width=65%} -->

<!-- :::note
You need to get IONIS wifi, there is two options :

1. You already have your Epitech email and password. You can click on __[IONIS wifi connection page](#epitech-wifi)__.

2. You don't have your Epitech email and password. Send via sms **getwifi** to **06 44 63 42 42**. You will receive temporary login from IONISWIFI. Then you can click on __[IONIS wifi connection page](#epitech-wifi)__ and use those credentials.

Once connected to **IONIS wifi**, you can click on **Connect to wifi** or **Do not connect to the internet**
::: -->
