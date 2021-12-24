# 3018 Knowledge Base

I received a [Sainsmart Genmitsu 3018 Pro CNC Mill](https://www.sainsmart.com/collections/cnc-machines/products/sainsmart-genmitsu-cnc-router-pro-diy-kit) for Christmas 2020.  This repo is intended to capture things information about the mill and documentation on upgrades that I make.  Purchased part upgrades have links provided, and design infomation for custom design upgrades is captured either in this repo or is linked from this repo.

# Hardware Upgrades
## General
* [Sainsmart Enclosure](https://www.sainsmart.com/collections/genmitsu-cnc-replacement-upgrade-parts/products/genmitsu-kaba-desktop-cnc-enclosure)
  * This was probably the most valuable accessory to have for the 3018.  
  * Milling is a dusty, dirty process, and not very quiet.  The enclosure helps with the noise a bit, but it absolutely reuqired for dust containment.  When a laser is used, it also contains the smoke pretty well.
 
* Enclosure Modifications
  * Power pass through grommit
    * Purchase Link: [Amazon](https://www.amazon.com/gp/product/B06Y5HGYK2/)
  * USB pass through
    * Purchase Link: [Amazon](https://www.amazon.com/gp/product/B079957VC3/)
  * Rear cover, magnets
   * Purchase Link: [Amazon](https://www.amazon.com/gp/product/B07KJ9H31P)
   * Would recommend going with something thicker or wider for increased hold force.  
* [Cable Chain](https://www.thingiverse.com/thing:2775316)
* Isolation Pad
* [CNCjs](https://cnc.js.org/) on Raspi
  * Raspi mount box
  * Future: Camera mount

## Milling Specific Upgrades
* [Spoilboard](https://www.sainsmart.com/collections/genmitsu-cnc-replacement-upgrade-parts/products/genmitsu-cnc-mdf-spoilboard-for-3018-cnc-router-30-x-18-x1-2-cm)
  * Spoilboard X/Y alignment marking with Laser
    * [Horizontal](milling/spoilboard-alignment/spoilboard-guide-horizontal.nc)
    * [Vertical](milling/spoilboard-alignment/spoilboard-guide-vertical.nc)
* [Homing Touch Plate](milling/homing-plate.md)

## Laser Specific Upgrades
* [Sainsmart Genmitsu 5.5W Laser Module](https://www.sainsmart.com/collections/cnc-machines/products/sainsmart-blue-laser-module-kit)
* [Laser Shield](https://github.com/doug-harriman/Laser-Shield/blob/main/README.md) - A spindle/laser holder mounted optical shield.
* Future: Air assist
* Future: Exhaust fan & ducting
  * [Large Fan](https://www.amazon.com/gp/product/B07PHT5SM6/)
  * [Exhaust Wall Vent](https://www.amazon.com/gp/product/B01MA52QXF/) 

# Learnings & Tools
## General
* Online G-Code viewer/simulator [NC Viewer](https://ncviewer.com/)

## Milling
* Speed fix utility for Fusion360 tooling paths.
* [Speeds & Feeds](milling/feeds-n-speeds.md)
* [Tools/Bits](milling/tools-n-bits.md)
* [SolidWorks CAM](milling/solidworks-cam.md)

## Laser
* [Materials, Speeds & Power](laser/speed-power.md)
* Process parameter optimization scripts
  * Focus
  * Speed & Power
* [Inkscape](https://inkscape.org/) for all artwork 
  * [Lasertools Extension](https://github.com/ChrisWag91/Inkscape-Lasertools-Plugin) for G-Code generation
  * All Inkscape objects must be converted to paths before running Lasertools.  A few key tips on conversion:
    * Line art convert to paths with "Stroke to Path"
    * Text convert to paths with "Object to Path"
