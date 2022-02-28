// units can have a always_before/algorithm/always_after block sequence
unit main(output uint8 leds)
{
  uint24 count = 100;

  always_before {
    if (count == 132) { __finish(); }
    __display("count = %d",count);
  }

  algorithm {
    while (1) {
      count = count + 1;
    }
  }

  always_after {
    leds = count[0,8];
  }

}
