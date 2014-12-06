N = 10000;
dist = Q4LapacianDistGen(0.5, N);
t = min(dist):0.1:max(dist);
h = hist(dist,t);
h = h / N;
plot(t,h);

%snr 0 dB -> sigma = 1 -> alpha = sqrt(2)
ones = Q4LapacianDistGen(sqrt(2), N/2) + 1;
zeros = Q4LapacianDistGen(sqrt(2), N/2) - 1;
bits = cat(1, ones, zeros);

e1 = sum(ones < 0) / (N/2)
e0 = sum(zeros > 0) / (N/2)