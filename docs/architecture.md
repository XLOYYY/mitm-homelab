1) Kali Linux is used as the attacker machine.
Ubuntu is the target machine.
Metasploitable is an intentionally vulnerable host.

2) Kali performs ARP spoofing to place itself between the target and the gateway.
Because of this, all traffic passes through Kali.

3) Target → Kali → Gateway
   Gateway → Kali → Target

4) Traffic is captured using Wireshark.
This allows observation of intercepted packets.

