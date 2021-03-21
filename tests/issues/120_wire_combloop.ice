
algorithm foo(input   uint8 pcpo,
              output! uint8 newPc)
{
  always {
    newPc = pcpo;
    __display("%d",pcpo);
  }
}

algorithm main(output uint8 leds)
{
  uint8 pc = 0;
  uint8 nextPc = uninitialized;
  
  uint8 iter(0);

  uint8 pcPlusOne := pc + 1;

  foo f(pcpo <: pcPlusOne);

  while (iter < 16) {
  
    nextPc = pcPlusOne;
++:
    nextPc = f.newPc;
    pc     = nextPc;
    iter   = iter + 1;
    
  }

}
