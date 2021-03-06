---
title: Ransomware Threat at Wellington Hospital
author:
    - Dylan Chong
date: \today{}
fontsize: 12pt
documentclass: extreport
linestretch: 1.5

---

# Introduction

Ransomware such as WannaCry, NotPetya, and Locky prevent access to computer
files, often by encrypting the files, and demanding a payment to decrypt them.
They often spread, automatically, affecting a large number of users.

WannaCry affected at least 45,000 computers, and was able to prevent work at
least 16 hospitals in the United Kingdom this year, since medical records could
not be accessed [2]. NotPetya affected hospitals in the United States,
postponing at least one surgery, and affecting the Merk drug company's computer
network [4]. Several government agencies in the Ukraine were affected [4].
Wellington Hospital could be one of these affected organisations in the future.

As asked by Wellington Hospital, this case study will discuss: the existence of
the vulnerabilities used by WannaCry, NotPetya and Locky; how the
aforementioned ransomware spread; and ways Wellington Hospital can protect
itself against such attacks.

# Analysis of Recent Ransomware

## WannaCry

WannaCry is an example of some recent ransomware -  it has affected at least
45,000 computers and at least 16 hospitals in the UK alone, since its release
earlier this year [1].

WannaCry used a vulnerability called called 'EternalBlue', which may have been
developed by the NSA [2]. This vulnerability exists in various versions of
windows ranging from Windows XP to Windows Server 2008 R2 - it did not exist on
later versions of Windows [5]. EternalBlue exploits a bug in the Server Message
Block (SMB) protocol (a protocol for file sharing and remote Windows services)
to install WannaCry on a remote computer \[13]\[14].

WannaCry may also take advantage of phishing emails (emails that trick the user
into installing malicious software) although this has not been confirmed
\[1][11].

Wellington Hospital will be especially at risk from WannaCry if it uses a
vulnerable Windows version, if the staff are not well aware of phishing emails
and how to recognise them. If Wellington Hospital computers are connected to
the Internet, then there is a much higher probability of the network being
infected by WannaCry (in comparison to a network that is not connected to the
internet).

## NotPetya

NotPetya is another example of recent ransomware. Like other ransomware, it
encrypts files and demands a payment for decryption. However, once the payment
has been made, decryption is still not possible because the required decryption
key is not stored by NotPetya [3]. This makes NotPetya very dangerous to
Wellington Hospital patients, as it will prevent critical operations that
require the operation of hospital computers.

NotPetya exploits bugs in the Windows management tools PSExec and WMI [3] and
the previously mentioned EternalBlue [4] and SMB [10] vulnerabilities to
install NotPetya on remote computers. NotPetya also searches for administrator
credentials and the computers memory, and use them to access and infect other
computers on the network. This technique can be very effective because many
organisations' networks have an administrator that has full access to all other
machines on the network. Once the administrator credentials have been
retrieved, they can be used to infect the entire network with NotPetya [13].

NotPetya has also used a Software Supply Chain Attack to infect computers in
the Ukraine [9]. This type of attack involves compromising a third-party
software supplier of the target organisation, so the target organisation
becomes infected with NotPetya when the software is downloaded/updated and run
[8].

Wellington Hospital is especially at risk from NotPetya if it's systems use the
aforementioned Windows management tools, and/or a Windows version that is
vulnerable to EternalBlue (these are mentioned in the WannaCry section above).

## Locky

The Locky ransomware is introduced to a computer through malicious email
attachments. Opening the attachment causes Locky to be installed and executing,
encrypting files [6].

Emails contain Locky (as of August 2017) can be identified by these
characteristics [6]:

- the email was sent from an unknown source,
- the email has an (almost) empty email body,
- and the email has an attachment called 'E 2017-08-09 (580)' (or something
similar) [6].

# Available Prevention Methods

## Regularly Install Software Updates

Regularly installing software updates is very important in protecting against
ransomware, particularly with security updates for the operating systems
\[3][5]. Microsoft was able to release a security update to protect vulnerable
Windows operating systems against WannaCry, and another to find and remove
the WannaCry ransomware [11].

There are two advantages to this prevention method. Firstly, the updates
address the vulnerability directly, rather than reduce the probability of
ransomware infecting the entire network like the 'Limit Administrator Account
Permissions' method described further below. Secondly, it is not time-consuming
to install the updates on computers that are not used 100% of the time. If
there are groups of computers that is used 100% of the time, then updates could
be installed to a few computers at a time so that there would be at least one
computer that is available 100% of the time.

## Install the Latest Operating System

Installing the latest versions of the operating systems can help as well, for
example, the EternalBlue vulnerability only existed on older versions of
Windows - i.e. not Microsoft's latest version of Windows, Windows 10 [5].

There are a few disadvantages to installing the latest operating system.
Firstly, there is potentially significant amount of work and time required to
update a large number of computers - this would be problematic for a hospital
that needs as computer systems to be constantly available for the hospital to
run. Secondly, any existing, multiple-year-long contracts with Microsoft for
using a specific operating system could inhibit upgrades. Lastly, application
software that Wellington Hospital uses may not have been tested thoroughly on,
or support, the newest operating systems.

## Educate Staff to Recognise Phishing Attacks

Multiple sources recommend that staff should be careful when opening email
attachments, especially when the email was sent from an unfamiliar or
suspicious source \[12][11]. This is because ransomware such as Locky [6], and
potentially including WannaCry \[1][11], can be introduced to a computer
through phishing attacks involving email attachments - opening the email
attachments could cause the ransomware to be installed. Making staff are aware
of these types of emails will likely reduce the probability of infections via
email attachments.

## Disable the SMB v1 Protocol

Both WannaCry and NotPetya exploit a vulnerability in the SMB v1 protocol to
spread themselves to multiple computers \[13]\[14][10]. According to Microsoft
[7], SMB v1 is almost 30 years old and was not designed to follow modern
security standards. Later versions of SMB use several methods/protocols to make
these versions of SMB much more secure [7]; Wellington Hospital should use a
newer version of SMB if the protocol is being used.

It is highly recommended that SMB v1 should be disabled to improve the security
of Windows systems \[3][7]. Instructions on how to disable the protocol can be
found on Microsoft's website ([7]).

SMB v1 can be avoided by most organisations. If Wellington Hospital still uses
Windows XP or Windows Server 2003, uses old management software, or old
multifunction printers, then SMB v1 may still be required [7]. More details
can be found on Microsoft's website ([7]).

## Limit Administrator Account Permissions

One of the reasons NotPetya can gain access to an entire network is through
finding administrator account in an infected computer's memory - if the
administrator account has access to the entire network, the entire network can
be easily infected at once. If a compromised administrator account does
not have full access to everything on the network, NotPetya will have only have
limited access [13].

This method may only slow NotPetya down, potentially providing IT managers time
to isolate the problem before it spreads to the entire network (only if the
ransomware is discovered quickly). It may not provide any permanent protection.

# Recommended Prevention Methods

## Regularly Install Software Updates

Regularly installing software updates appears to be the most important and
effective method in protecting Wellington Hospital against ransomware attacks.
It directly addresses vulnerabilities, and is not time-consuming.

## Install the Latest Operating System

Installing the latest operating systems is not recommended, mainly because of
the time required to install the latest operating systems, and therefore
potential interruptions to work at the hospital.

## Educate Staff to Recognise Phishing Attacks

Educating staff to recognise phishing attacks is recommended because it could
reduce the probability of an infection through malicious email attachments,
especially from Locky. This method does not protect against Software Supply
Chain Attacks because software is not (usually) delivered by email to hospital
staff directly.

## Disable the SMB v1 Protocol

Disabling the SMB v1 protocol is highly recommended \[3][7]. The protocol does
not follow modern security standards, and there are later versions of the
protocol that have improved security. This would remove the vulnerability used
by both WannaCry and NotPetya \[13]\[14\[10]. Newer versions of SMB can be used
instead as they have improved security features [7].

## Limit Administrator Account Permissions

Limiting administrator account permissions is also a recommended method to
protect Wellington Hospital because it reduces the probability that NotPetya
will infect the entire network of part of it becomes infected. It will,
however, not be as effective as regularly installing security updates.

# Bibliography

<!-- Unused sources are commented out. -->
<!-- Used, shifted sources have their original number above them. -->

[1]
CertNZ.
*"WannaCry Ransomware used in large scale international attacks".*
Internet:
https://www.cert.govt.nz/businesses-and-individuals/recent-threats/alert-wannacry-ransomware-used-in-large-scale-international-attacks,
May. 15, 2017 [Sept. 11, 2017]

[2]
Russell Brandom.
*"UK hospitals hit with massive ransomware attack".*
Internet:
https://www.theverge.com/2017/5/12/15630354/nhs-hospitals-ransomware-hack-wannacry-bitcoin
May. 12, 2017 [Sept. 11, 2017]

[3]
CertNZ.
*"New ransomware campaign known as NotPetya".*
Internet:
https://www.cert.govt.nz/it-specialists/advisories/advisory/new-petya-ransomware-threat
Jun. 28, 2017 [Sept. 11, 2017]

[4]
April Glaser.
*"U.S. hospitals have been hit by the global ransomware attack".*
Internet:
https://www.recode.net/2017/6/27/15881666/global-eu-cyber-attack-us-hackers-nsa-hospitals
Jun. 27, 2017 [Sept. 11, 2017]

[5]
Mohit Kumar
*"Latest Hacking Tools Leak Indicates NSA Was Targeting SWIFT Banking
Network".*
Internet:
http://thehackernews.com/2017/04/swift-banking-hacking-tool.html
Apr. 14, 2017 [Sept. 11, 2017]

[6]
Sara Barker.
*"Locky ransomware's 'rebirth' puts everyone at risk once again".*
Internet:
https://securitybrief.co.nz/story/locky-ransomwares-rebirth-puts-everyone-risk-once-again/
Aug. 21, 2017 [Sept. 11, 2017]

<!-- [7] https://www.bleepingcomputer.com/virus-removal/locky-ransomware-information-help  -->

<!-- 21 -->
[7]
Ned Pyle.
*"Stop using SMB1".*
Internet:
https://blogs.technet.microsoft.com/filecab/2016/09/16/stop-using-smb1/
Sept. 16, 2016 [Sept. 11, 2017]

<!-- [8] https://www.networkworld.com/article/3152449/security/use-virtual-containers-to-isolate-ransomware.html  -->

<!-- 8 -->
[8]
msft-mmpc.
*"Windows Defender ATP thwarts Operation WilySupply software supply chain cyberattack".*
Internet:
https://blogs.technet.microsoft.com/mmpc/2017/05/04/windows-defender-atp-thwarts-operation-wilysupply-software-supply-chain-cyberattack/
May. 4, 2017 [Sept. 11, 2017]

<!-- [9] https://community.sophos.com/kb/en-us/120797  -->

<!-- 19 -->
[9]
msft-mmpc.
*"New ransomware, old techniques: Petya adds worm capabilities".*
Internet:
https://www.recode.net/2017/6/27/15881666/global-eu-cyber-attack-us-hackers-nsa-hospitals
Jun. 27, 2017 [Sept. 11, 2017]

<!-- [10] https://support.symantec.com/en_US/article.HOWTO124710.html  -->

<!-- 18 -->
[10]
msft-mmpc.
*"Windows 10 platform resilience against the Petya ransomware attack".*
Internet:
https://blogs.technet.microsoft.com/mmpc/2017/06/29/windows-10-platform-resilience-against-the-petya-ransomware-attack/
Jun. 29, 2017 [Sept. 11, 2017]

<!-- [11] https://blog.avira.com/locky-goes-offline/  -->

<!-- 17 -->
[11]
MSRC Team.
*"Customer Guidance for WannaCrypt attacks".*
Internet:
https://blogs.technet.microsoft
.com/msrc/2017/05/12/customer-guidance-for-wannacrypt-attacks/
May. 12, 2017 [Sept. 11, 2017]

<!-- [12] https://www.theregister.co.uk/2017/06/28/petya_notpetya_ransomware/  -->

<!-- 15 -->
[12]
PCI Security Standards Council.
*"Information Supplement: Best Practices for Implementing a Security Awareness Program".*
Internet:
https://www.pcisecuritystandards.org/documents/
PCI_DSS_V1.0_Best_Practices_for_Implementing_Security_Awareness_Program.pdf
Oct, 2014 [Sept. 11, 2017]

[13]
Sean Dillon, et. al.
*"MS17-010 EternalBlue SMB Remote Windows Kernel Pool Corruption".*
Internet:
https://www.rapid7.com/db/modules/exploit/windows/smb/ms17_010_eternalblue
[Sept. 11, 2017]

[14]
Ali Islam, et. al.
*"SMB Exploited: WannaCry Use of 'EternalBlue'".*
Internet:
https://www.fireeye.com/blog/threat-research/2017/05/smb-exploited-wannacry-use-of-eternalblue.html
May. 26, 2017 [Sept. 11, 2017]

<!-- [16] https://www.forescout.com/wp-content/uploads/2017/05/Ransomware-ForeScout-Solution-Brief.pdf -->
