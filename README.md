# MITM Homelab (DevSecOps Practice Project)

## 📌 Overview

This project demonstrates a reproducible MITM (Man-in-the-Middle) homelab using Bash automation.

The goal is to simulate network traffic interception in a controlled environment (such as Kali Linux + Ubuntu LTS + Metasploitable) and practice basic DevSecOps concepts such as automation, reproducibility and system scripting.

---

## 🎯 Goals

* Understand how MITM attacks work at network level
* Practice traffic interception and analysis with Wireshark
* Automate lab setup using Bash
* Learn basic Git/GitHub workflow
* Build a structured and reproducible lab environment
* Show weaknesses of using telnet 

---

## 🏗️ Architecture

* **Kali Linux** → attacker machine (runs scripts)
* **Ubuntu** → target machine
* **Metasploitable** → vulnerable host
* **Router/Gateway** → network routing

Traffic flow:
Target → Gateway → Kali (MITM) → Gateway

---

## ⚙️ Technologies Used

* Linux (Kali, Ubuntu LTS)
* Bash scripting
* arpspoof
* Wireshark
* Git / GitHub

---

## 🚀 Features

* Automated ARP spoofing via scripts
* Packet capture using Wireshark
* Modular Bash scripts (setup / attack / capture / cleanup)
* Reproducible lab workflow

---

## 📂 Project Structure

```
scripts/     → automation scripts  
docs/        → architecture and notes  
logs/        → (ignored, for local captures)  
README.md    → project description  
```

---

## ▶️ Usage

### 1. Enable forwarding

```
sudo ./scripts/enable_forwarding.sh
```

### 2. Run MITM attack

```
sudo ./scripts/run_lab.sh <target_ip> <gateway_ip>
```

### 3. Capture traffic

```
sudo ./scripts/capture_traffic.sh
```

### 4. Cleanup

```
sudo ./scripts/cleanup.sh
```

---

## 📊 Results

* Captured network traffic (.pcap)
* Observed packet flow between hosts
* Verified MITM interception

---

## ⚠️ Disclaimer

This project is for educational purposes only.
All experiments should be performed in an isolated lab environment.
