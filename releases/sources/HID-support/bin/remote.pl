#!/bin/perl -w

$k01 = "040003"; # centr
$k02 = "040001"; # left
$k03 = "040002"; # right
$k04 = "080001"; # up
$k05 = "0800ff"; # dn

#$fdev="/dev/usb/hid/hiddev0"; # IR Remote (ASUS)
$fdev="/dev/event2"; # Mouse
#$fdev="/opt/usr/mybin"; # My test file
$hiddir="/mnt/HD/HD_a2/Nas_Prog/HID-support";

open(REMOTE,$fdev) || die "!Error open file: $!\n";
binmode(REMOTE);
begin:
$df='';
sysread(REMOTE, $df, 64);
$ascii = substr(unpack("H*",$df),20,6);
#print "$ascii\n"; #for otladki
SWITCH:
{
#if ($ascii eq $k01 ) { print " k01\n"; system "echo centr > ./mouse.txt"; last SWITCH; } #start pleer list pos 1
#if ($ascii eq $k02 ) { print " k02\n"; system "echo left > ./mouse.txt"; last SWITCH; } 
#if ($ascii eq $k03 ) { print " k03\n"; system "echo right > ./mouse.txt";last SWITCH; } 
#if ($ascii eq $k04 ) { print " k04\n"; system "echo up > ./mouse.txt"; last SWITCH; }
#if ($ascii eq $k05 ) { print " k05\n"; system "echo down > ./mouse.txt";last SWITCH; }
if ($ascii eq $k01 ) { print " k01\n"; system "$hiddir/web/scripts/ctlrelay caps_pulse"; last SWITCH; } #start pleer list pos 1
if ($ascii eq $k02 ) { print " k02\n"; system "$hiddir/web/scripts/ctlrelay num_pulse"; last SWITCH; }
if ($ascii eq $k03 ) { print " k03\n"; system "$hiddir/web/scripts/ctlrelay scroll_pulse";last SWITCH; }
if ($ascii eq $k04 ) { print " k04\n"; system "$hiddir/web/scripts/ctlrelay num_on"; last SWITCH; }
if ($ascii eq $k05 ) { print " k05\n"; system "$hiddir/web/scripts/ctlrelay num_off";last SWITCH; }
}
goto begin;
close(REMOTE);
