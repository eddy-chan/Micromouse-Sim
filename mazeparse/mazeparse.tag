<?xml version='1.0' encoding='ISO-8859-1' standalone='yes' ?>
<tagfile>
  <compound kind="file">
    <name>mazelib.c</name>
    <path>/home/eddyc/schoolwork/eec194/mazeparse/src/</path>
    <filename>mazelib_8c</filename>
    <includes id="mazelib_8h" name="mazelib.h" local="yes" imported="no">mazelib.h</includes>
    <member kind="function">
      <type>FILE *</type>
      <name>getFStream</name>
      <anchorfile>mazelib_8c.html</anchorfile>
      <anchor>967fffed78402cf93c354840f8df8603</anchor>
      <arglist>(const char *filename)</arglist>
    </member>
    <member kind="function">
      <type>unsigned short</type>
      <name>setWall</name>
      <anchorfile>mazelib_8c.html</anchorfile>
      <anchor>27f60cd44bf69e9f7190b950eb2da54d</anchor>
      <arglist>(BLOCK *b, unsigned short partition_num)</arglist>
    </member>
    <member kind="function">
      <type>unsigned short</type>
      <name>clearWall</name>
      <anchorfile>mazelib_8c.html</anchorfile>
      <anchor>0b062194835d22a02a75fd5615f1057e</anchor>
      <arglist>(BLOCK *b, unsigned short partition_num)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>readEastWall</name>
      <anchorfile>mazelib_8c.html</anchorfile>
      <anchor>c1b5c5e80c58279bb626546818ed6632</anchor>
      <arglist>(FILE *f, bitmap_t *bitmap, unsigned short y)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>readSouthWall</name>
      <anchorfile>mazelib_8c.html</anchorfile>
      <anchor>d95d7a233c741a18c6e07469f617be7e</anchor>
      <arglist>(FILE *f, bitmap_t *bitmap, unsigned short y)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>importMap</name>
      <anchorfile>mazelib_8c.html</anchorfile>
      <anchor>c82137216de71ab1045fb8e158385a7a</anchor>
      <arglist>(const char *filename, bitmap_t *bitmap)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>printBinaryMap</name>
      <anchorfile>mazelib_8c.html</anchorfile>
      <anchor>d58e06d19761383fbf604d35c62c69df</anchor>
      <arglist>(BLOCK *bitmap)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>mazelib.h</name>
    <path>/home/eddyc/schoolwork/eec194/mazeparse/src/</path>
    <filename>mazelib_8h</filename>
    <class kind="struct">bitmap_t</class>
    <member kind="define">
      <type>#define</type>
      <name>BLOCK_SIZE</name>
      <anchorfile>mazelib_8h.html</anchorfile>
      <anchor>d51ded0bbd705f02f73fc60c0b721ced</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>BLOCK_ARRAY_SIZE</name>
      <anchorfile>mazelib_8h.html</anchorfile>
      <anchor>a248adf6523ba18254eca1aef1a12670</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>PARTITIONS_MAX</name>
      <anchorfile>mazelib_8h.html</anchorfile>
      <anchor>4b42c718a0f0c43ad05471eedac300dc</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>unsigned char</type>
      <name>BLOCK</name>
      <anchorfile>mazelib_8h.html</anchorfile>
      <anchor>7e9b616bfee182ca017d007bf905c662</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>importMap</name>
      <anchorfile>mazelib_8h.html</anchorfile>
      <anchor>c82137216de71ab1045fb8e158385a7a</anchor>
      <arglist>(const char *filename, bitmap_t *bitmap)</arglist>
    </member>
    <member kind="function">
      <type>unsigned short</type>
      <name>setWall</name>
      <anchorfile>mazelib_8h.html</anchorfile>
      <anchor>27f60cd44bf69e9f7190b950eb2da54d</anchor>
      <arglist>(BLOCK *b, unsigned short partition_num)</arglist>
    </member>
    <member kind="function">
      <type>unsigned short</type>
      <name>clearWall</name>
      <anchorfile>mazelib_8h.html</anchorfile>
      <anchor>0b062194835d22a02a75fd5615f1057e</anchor>
      <arglist>(BLOCK *b, unsigned short partition_num)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>printBinaryMap</name>
      <anchorfile>mazelib_8h.html</anchorfile>
      <anchor>d58e06d19761383fbf604d35c62c69df</anchor>
      <arglist>(BLOCK *bitmap)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>mazeparse.c</name>
    <path>/home/eddyc/schoolwork/eec194/mazeparse/src/</path>
    <filename>mazeparse_8c</filename>
    <includes id="mazelib_8h" name="mazelib.h" local="yes" imported="no">mazelib.h</includes>
    <member kind="function">
      <type>int</type>
      <name>main</name>
      <anchorfile>mazeparse_8c.html</anchorfile>
      <anchor>0ddf1224851353fc92bfbff6f499fa97</anchor>
      <arglist>(int argc, char *argv[])</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>bitmap_t</name>
    <filename>structbitmap__t.html</filename>
    <member kind="variable">
      <type>BLOCK</type>
      <name>bitmapV</name>
      <anchorfile>structbitmap__t.html</anchorfile>
      <anchor>8b0cff7eba944cbbd99691f438934f37</anchor>
      <arglist>[BLOCK_ARRAY_SIZE]</arglist>
    </member>
    <member kind="variable">
      <type>BLOCK</type>
      <name>bitmapH</name>
      <anchorfile>structbitmap__t.html</anchorfile>
      <anchor>a24159959a9b5f2feb45d97562b78e48</anchor>
      <arglist>[BLOCK_ARRAY_SIZE]</arglist>
    </member>
  </compound>
  <compound kind="dir">
    <name>mazeparse/</name>
    <path>/home/eddyc/schoolwork/eec194/mazeparse/</path>
    <filename>dir_66585802815f923ef079005fc9ba2e89.html</filename>
    <dir>mazeparse/src/</dir>
  </compound>
  <compound kind="dir">
    <name>mazeparse/src/</name>
    <path>/home/eddyc/schoolwork/eec194/mazeparse/src/</path>
    <filename>dir_12fb607ad4e186548968837c1bce5178.html</filename>
    <file>mazelib.c</file>
    <file>mazelib.h</file>
    <file>mazeparse.c</file>
  </compound>
</tagfile>
