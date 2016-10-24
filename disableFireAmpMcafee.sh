#!/bin/bash

#get the sudos
sudo su

#disable mcafee
mv /Library/LaunchDaemons/com.mcafee.agent.cma.plist /Library/LaunchDaemons/com.mcafee.agent.cma.plist.bak
mv /Library/LaunchDaemons/com.mcafee.ssm.Eupdate.plist /Library/LaunchDaemons/com.mcafee.ssm.Eupdate.plist.bak
mv /Library/LaunchDaemons/com.mcafee.ssm.ScanFactory.plist /Library/LaunchDaemons/com.mcafee.ssm.ScanFactory.plist.bak
mv /Library/LaunchDaemons/com.mcafee.ssm.ScanManager.plist /Library/LaunchDaemons/com.mcafee.ssm.ScanManager.plist.bak
mv /Library/LaunchDaemons/com.mcafee.virusscan.fmpd.plist /Library/LaunchDaemons/com.mcafee.virusscan.fmpd.plist.bak

mv /Library/LaunchAgents/com.mcafee.menulet.plist /Library/LaunchAgents/com.mcafee.menulet.plist.bak 
mv /Library/LaunchAgents/com.mcafee.reporter.plist /Library/LaunchAgents/com.mcafee.reporter.plist.bak

#disable fireamp
mv /Library/LaunchDaemons/com.sourcefire.amp.daemon.plist /Library/LaunchDaemons/com.sourcefire.amp.daemon.plist.bak
mv /Library/LaunchDaemons/com.sourcefire.amp.updater.plist /Library/LaunchDaemons/com.sourcefire.amp.updater.plist.bak

mv /Library/LaunchAgents/com.sourcefire.amp.agent.plist /Library/LaunchAgents/com.sourcefire.amp.agent.plist.bak
