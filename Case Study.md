---
title: Randsomware Threat At Wellington Hospital
author:
    - Dylan Chong
date: \today{}
---

# Introduction

Randsomware such as Wannacry, NotPetya, and Locky prevent access to computer
files, often by encrypting the files, and demanding a payment to decrypt them.
They often spread, automatically, affecting a large number of users.

<!-- TODO are used callan feedback -->

Wannacry affected at least 45,000 computers, and was able to prevent work at
least 16 hospitals in the United Kingdom this year since medical records could
not be accessed [2]. NotPetya affected hospitals in the United States,
postponing at least one surgery, and affecting the Merk drug company's computer
network [4]. Several government agencies in the Ukraine were affected [4].

This case study will discuss: the existence of the vulnerabilities used by
Wannacry, NotPetya and Locky; how they aforementioned randsomware spread; and
ways organisations like Wellington Hospital can protect itself against such
attacks.

# Analysis of Recent Randsomware

**TODO introduce the section**

## Wannacry

Wannacry is an example of some recent ransomware -  it has affected at least
45,000 computers and at least 16 hospitals in the UK alone, since its release
earlier this year [1].

Wannacry used a vulnerability called called 'EternalBlue', which may have been
developed by the NSA [2]. This vulnerability exists in various versions of
windows ranging from Windows XP to Windows Server 2008 R2 - it did not exist on
later versions of Windows [5]. EternalBlue exploits a bug in the Server Message
Block protocol (a protocol for file sharing and remote Windows services) to
install Wannacry on a remote computer \[13]\[14]. 

Wannacry may also take advantage of phishing emails (emails that trick the user
into installing malicious software) although this has not been confirmed [1].

Wellington Hospital will be especially at risk from Wannacry if it uses a
vulnerable Windows version, if the staff are not well aware of phishing emails
and how to recognise them. If Wellington Hospital computers are connected to
the Internet, then there is a much higher probability of the network being
infected by Wannacry (in comparison to a network that is not connected to the
internet).

## NotPetya

NotPetya is another example of recent ransomware. It not only encrypts files
and demands a payment for decryption, but once the payment has been made,
decryption is still possible because the required key is discarded [3].

NotPetya exploits bugs in the Windows management tools PSExec and WMI [3] and
the previously mentioned EternalBlue vulnerability [4] to install NotPetya on
remote computers. NotPetya also searches for (network administrator)
credentials and the computers memory, and use them to access and infect other
computers on the network. This technique can be very effective because many
organisations' networks have an administrator that has full access to all other
machines on the network [13].

Wellington Hospital is especially at risk from NotPetya if it's systems use the
aforementioned Windows management tools, and/or a Windows version that is
vulnerable to EternalBlue (these are mentioned in the Wannacry section above).

## Locky

**TODO once the others have done more research**

# Available Prevention Methods

- Upgrade software
    - 
    - Microsoft released updates
- Disable SMB v1 [3]
- Use administrator credentials sparingly. Don’t use a flat network and tightly
control administrator credentials. Also, elevate only when necessarily. [12]
- Use virtual containers
- Making employees part of the security plan [15]

# Recommended Prevention Methods
