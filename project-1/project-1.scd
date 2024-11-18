s.boot;
(
SynthDef("tutorial-args", { arg freq = 440, out = 0;
    Out.ar(out, SinOsc.ar(freq, 0, 0.2));
}).add;
)
// both write to bus 1, and their output is mixed
x = Synth("tutorial-args", ["out", 0, "freq", 660]);
y = Synth("tutorial-args", ["out", 1, "freq", 770]);
x.free;
y.free;


f = { arg a, b;
    "Evaluating...".postln;
    a + b
};
f
f.value(5,4);