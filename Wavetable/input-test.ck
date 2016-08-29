Step s => Envelope e => Wavetable w => dac;
1 => s.next;
440 => e.value;
4400 => e.target;
5::second => e.duration;
0.75 => w.gain;
5::second => now;
220 => e.target;
5::second => now;

e =< w;

Phasor p => w;
1 => w.sync;
repeat(100)
{
  Math.random2(60,72) => Std.mtof => p.freq;
  250::ms => now;
}
