s.boot;
s.plotTree;
Env.new([0.01,0.25,0.125,0.5,0.25,1,0.01],[0.25,0.25,0.5,0.5,0.5,1], \exp).plot;

(
x = {
	var sig, env, freq, duration;
	duration = 2;
	env = EnvGen.kr(Env.new([0.01,0.25,0.125,0.5,0.25,1,0.01],[0.25,0.25,0.5,0.5,0.5,1], \exp), doneAction:2);
	freq = XLine.kr(ExpRand(55,880),ExpRand(55,880),duration,doneAction:2);
	sig = Pulse.ar(freq, mul: env);
	Out.ar([0,1],sig);
}.play;
)

