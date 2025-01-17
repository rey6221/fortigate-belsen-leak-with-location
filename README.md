# Fortigate Belsen Leak Research

This repository contains informaion about the Fortigate firewall vulnerability (CVE-2022-40684) and affected IPs that were publicly disclosed by the Belsen Group. This information is being shared for security research and defensive purposes to help organizations identify if they were impacted.
The original list of IPs contained within this repo was obtained from https://github.com/arsolutioner/fortigate-belsen-leak/tree/main and then modified using a powershell script to also include the DNS names and Geo-IP location of each IP.


## Background

In 2022, Fortinet disclosed a critical authentication bypass vulnerability (CVE-2022-40684) affecting FortiOS, FortiProxy, and FortiSwitchManager. In January 2025, configurations from approximately 15,000 affected devices were publicly released by the Belsen Group.

## Purpose

This repository serves as a resource for:
- Security researchers studying the impact of CVE-2022-40684
- Organizations to check if they were affected
- Raising awareness about the importance of timely security patches

## Contents

- `affected-ips.csv`: List of IP addresses with DNS names and Geo-IP info identified as potentially affected
- `FG-IP-Data-Gathering.ps1`: The powershell script used to add the DNS names and Geo-IP information.

## Disclaimer

This information is provided for defensive security research purposes only. The data has been publicly disclosed and is being shared to help organizations assess their exposure and take necessary remediation steps.

## References

- [Fortinet Advisory](https://www.fortinet.com/blog/psirt-blogs/update-regarding-cve-2022-40684)
- CVE-2022-40684

## Contact & Support

I want to give Thanks to Aram Englander for making the IP list available so quickly. If your organization has been impacted by this vulnerability or you need assistance with mitigation you can contact him via:
- 💼 LinkedIn: [Amram Englander](https://www.linkedin.com/in/amram-englander-a23a6a89/)
- 📧 Secure Email: amrameng@proton.me
- 🛡️ For urgent security assistance or consultation, feel free to reach out via ProtonMail or LinkedIn

I am also available for assistance. Feel free to reach out to me via LinkedIn, or via my employers website
- LinkedIn: [Andrew Reynolds] (https://www.linkedin.com/in/reynoldsandrew4/)
- www.cbrcyber.com
