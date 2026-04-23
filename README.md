
# MITM Homelab (A DevSecOps Practice Project)

## 📌 Overview

For this project, I put together and showed how to set up a Man-in-the-Middle (MITM) homelab that you can easily re-create, all done with some Bash scripts. Also, this project demonstrates that protocols like telnet transmit data in plain text,
making them vulnerable to interception via MITM attacks.

My goal was to pretend to intercept network traffic in a safe, controlled setup – things like Kali Linux, Ubuntu LTS, and Metasploitable. This also let me practice some basic DevSecOps ideas, like making things automatic, being able to set it up again easily, and writing system scripts.

---

## 🎯 Goals

* To get a handle on how Man-in-the-Middle attacks actually happen on a network.
* To practice catching and looking at network traffic using Wireshark.
* To make the lab setup automatic with Bash scripts.
* To learn the basic steps for using Git and GitHub.
* To build a lab environment that's organized and makes sense.
* To show why using something like telnet is a bad idea because it's not secure.

---

## 🏗️ Architecture

* Kali Linux: This is the machine I used to attack and run all the scripts from.
* Ubuntu: This machine was the one being targeted.
* Metasploitable: A computer intentionally left open to attacks.
* Router/Gateway: What handles all the network traffic.

Here's how the traffic moved:
From the Target machine, it went to the Gateway, then through Kali (acting as the MITM), and finally back to the Gateway.

---

## ⚙️ Technologies Used

* Linux (specifically Kali and Ubuntu LTS)
* Bash scripting
* arpspoof
* Wireshark
* Git and GitHub

---

## 🚀 Features

* It can automatically do ARP spoofing using scripts.
* It can capture network packets with Wireshark.
* The Bash scripts are set up in modules for different tasks, like setting things up, launching an attack, capturing data, and cleaning up.
* You can easily re-create the whole lab process.

---

## 📂 Project Structure

scripts/: Where I kept all the automated scripts.
docs/: Contains details about how everything is put together, plus any notes.
logs/: This folder is ignored by Git, and it's where local traffic captures go.
README.md: A file that describes the project.

---

## ▶️ Usage

### 1. Enable forwarding

sudo ./scripts/enable_forwarding.sh

### 2. Run MITM attack

sudo ./scripts/run_lab.sh <target_ip> <gateway_ip>

### 3. Capture traffic

sudo ./scripts/capture_traffic.sh

### 4. Cleanup

sudo ./scripts/cleanup.sh

---

## 📊 Results

* I ended up with captured network traffic, saved as .pcap files.
* I could see how packets moved between the different computers.
* I confirmed that the MITM interception actually worked.
* Captured telnet credentials from intercepted traffic
* Demonstrated how insecure protocols expose sensitive data

---

## ⚠️ Disclaimer

This project is for educational purposes only
All experiments should be performed in an isolated lab environment
