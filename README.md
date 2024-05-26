# Lattice FeatherWing
<image src=/images/lattice%20featherwing%20front.jpg>
Home of the Lattice FeatherWing


Lattice FeatherWing is an iCE5LP4K FeatherWing designed to be a companion to any Adafruit compatible feather development board available. Lattice FeatherWing provides 35 IO to 0.1" headers which can be used with dupont 0.1" cables to hook into a companion breadboard.

Interested? You can purchase the Lattice FeatherWing on [Tindie](https://www.tindie.com/products/34549/)

# Quick Facts about Lattice FeatherWing:

* 35 IO Exposed to 0.1" headers 
* 9 IO (including SPI programming pins) directly available to interface with host Feather.
* Small yet bright UHD1110 RGB LED
* 2.5V provided for NVCM programming
* Edge reachable reset button that solely resets the FPGA

# Pinout Card

Provided below is the pinout card that should ship with all Lattice FeatherWing. If you didn't get one, you can always print off the pinout card from the pinout card image in the [images](/images) directory of this repository.

<image src=/images/Lattice%20FeatherWing%20Pincard.jpg>

As noted on the pinout card, each pin on the Lattice FeatherWing corresponds to the phyiscal pin on the FPGA IC. These phyiscal pins are used in the [io.pcf](/examples/common/io.pcf) file to help make it easier for you to pick pins for input/outputs of your verilog designs. These pin numbers can be used to create pin groupings like in the io.pcf file to make it easier to generate your own designs.

# Some Quick Links

You can find some Lattice FeatherWing specific examples by clicking [here](/examples). These examples can be built with the included io.pcf and Makefile by using various make commands. (currently just RGB PWM example available).

In addition to the examples in this repository, you can also find examples for the iCE5LP4K in this [ice5lp4k_examples repository](https://github.com/skerr92/ice5lp4k_examples).

If you're interested in CPU design, you can checkout the [O2 Trainer CPU](https://github.com/skerr92/O2-Trainer).

The KiCAD board files and manufacturing files can be found by clicking [here](/Board%20Files/). These include all the information you need to make your own Lattice FPGA board, or order the files yourself if you want the challenge of making your own.

Lattice FeatherWing is Licensed under [MIT License](LICENSE). This license is permissive, and the contents of this repository come AS IS. Please see the License file for additonal details.