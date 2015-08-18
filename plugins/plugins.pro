TEMPLATE = subdirs

!android {

 SUBDIRS              += dmxusb
 SUBDIRS              += peperoni
 SUBDIRS              += udmx
 SUBDIRS              += midi
 unix {
   system(pkg-config --exists libola) {
     system(pkg-config --exists libolaserver) {
       SUBDIRS        += ola
     }
   }
 }
 !macx:!win32:SUBDIRS += dmx4linux
 SUBDIRS              += velleman
 SUBDIRS              += enttecwing
 SUBDIRS              += hid
 SUBDIRS              += osc
 SUBDIRS              += artnet
 SUBDIRS              += E1.31
 !macx:!win32:SUBDIRS += spi
 SUBDIRS              += loopback

} else {

 SUBDIRS              += artnet
 SUBDIRS              += E1.31
 SUBDIRS              += loopback
 SUBDIRS              += osc
}
