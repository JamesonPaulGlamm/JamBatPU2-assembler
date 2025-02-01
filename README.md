# Overview
This is a custom assembler for the BatPU-2 (computer made by mattbatwings, not me) <br/>
This project depends on customasm and the BatPU-2 repository <br/>
https://github.com/mattbatwings/BatPU-2 <br/>
https://github.com/hlorenzi/customasm

# ISA:
Under comment section click on the link to the right of ISA <br/>
https://www.youtube.com/watch?v=3gBZHXqnleU

# Credits:
https://github.com/hlorenzi/customasm <br/>
https://www.youtube.com/@mattbatwings

# Instructions:
https://github.com/hlorenzi/customasm <br/>
Download the win64.zip(if you are not on windows get the tar.gz or the .zip) <br/>
Extract the file (if you are not on windows you may have to extract and then compile it)

Download this repository via zip and extract it <br/>
Execute "customasm -f binstr" and give whatever asm file you want to assemble (see template.asm) <br/>
To turn your assembled file into a valid BatPU-2 .mc format do "python3 conv.py insertname.asm insertname.mc" (keep in mind you don't have to use .asm or .mc, you can use whatever)

https://github.com/mattbatwings/BatPU-2 <br/>
Download and extract the repository above <br/>
Use schematic.py to turn my "insertname.mc" files to a schem file the minecraft computer can actually use
