#!/bin/bash
autossh -M 11900 -fNR */:8080:localhost:5000 ec2-user@52.205.255.228
#autossh -M 11910 -fNR */:8070:localhost:22   ec2-user@52.205.255.228
