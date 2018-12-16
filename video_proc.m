v = VideoReader('detection09-11-2018 16_01_56.avi');
vwriter = VideoWriter('processed.avi');
vwriter.Quality = 99;
open(vwriter);

while hasFrame(v)
    fr = readFrame(v);
    r = norm(fr);
    writeVideo(vwriter,r);

end

close(v);