function [str, idxMin, idxMax] = analyzeData(time, col2, col3, alpha)
    figure('Name','Heart Beep');
    
   % adaptively finding period
    totalMean = mean(col2);
    standardDeviation = std(col2);
    newDomain = [];
    i = 1;
    threshold = round((totalMean - 3*standardDeviation),2);
    while length(newDomain) < 6 % third minimum needed for comparison
        if col2(i) >= threshold & col2(i+1) < threshold
            if length(newDomain) == 0 | length(newDomain) == 2 | length(newDomain) == 4
                newDomain(end+1) = i;
            end
        elseif col2(i) < threshold & col2(i+1) >= threshold
            if length(newDomain) == 1 | length(newDomain) == 3 | length(newDomain) == 5
                newDomain(end+1) = i + 1;
            end
        end
        i = i + 1;
    end
    
    idxMin = round(((newDomain(1)+newDomain(2))/2));
    idxMax = round(((newDomain(3)+newDomain(4))/2));
    newcol2 = col2(idxMin:idxMax);
    
    % plot original graph
    subplot(3,2,1);
    plot(time(idxMin:idxMax),newcol2);
    title('Col2 original heartbeat');
    
    % plot fourier transform
    subplot(3,2,2);
    fftcol2 = fft(newcol2);
    plot(1:length(fftcol2),fftcol2);
    title('Fourier Transform of Col2 heartbeat');
    axis([0 length(fftcol2) -3 1.5]);
    
    % Repeat for other heartbeat
    
    totalMeanI = mean(col3);
    standardDeviationI = std(col3);
    newDomainI = [];
    i = 1;
    thresholdI = round((totalMeanI - 3*standardDeviationI),2);
    while length(newDomainI) < 4
        if col3(i) >= thresholdI & col3(i+1) < thresholdI
            if length(newDomainI) == 0 | length(newDomainI) == 2
                newDomainI(end+1) = i;
            end
        elseif col3(i) < thresholdI & col3(i+1) >= thresholdI
            if length(newDomainI) == 1 | length(newDomainI) == 3
                newDomainI(end+1) = i + 1;
            end
        end
        i = i + 1;
    end
    
    idxMinI = round(((newDomainI(1)+newDomainI(2))/2));
    idxMaxI = round(((newDomainI(3)+newDomainI(4))/2));
    newcol3 = col3(idxMinI:idxMaxI);
    
    % plot original graph
    subplot(3,2,3);
    plot(time(idxMinI:idxMaxI),newcol3);
    title('Col3 original heartbeat');
    
    % plot fourier transform
    subplot(3,2,4);
    fftcol3 = fft(newcol3);
    plot(1:length(fftcol3),fftcol3);
    title('Fourier Transform of Col3 heartbeat');
    axis([0 length(fftcol3) -3 1.5]);
    
    % plot differences in wave
    subplot(3,2,5);
    y2 = interp1(time(idxMin:idxMax),newcol2,linspace(time(idxMin),time(idxMax),360),'spline');
    
    y3 = interp1(time(idxMinI:idxMaxI),newcol3,linspace(time(idxMinI),time(idxMaxI),360),'spline');
    diffY = abs(y2 - y3);
    plot(1:360,diffY);
    title('Absolute value of wave differences');
    
    % plot differences in fourier transforms
    subplot(3,2,6);
    f2 = interp1(1:length(fftcol2),fftcol2,1:360,'spline');
    f3 = interp1(1:length(fftcol3),fftcol3,1:360,'spline');
    diffF = abs(f2 - f3);
    plot(1:360,diffF);
    title('Absolute value of fourier transform differences');
    axis([0 360 0 5]);
    
    % find difference in two phases of col2 graph for comparison purposes
    % to col3 graph and respective fourier transforms
    
    idxMinE = idxMax;
    idxMaxE = round(((newDomain(5)+newDomain(6))/2));
    newcol2E = col2(idxMinE:idxMaxE);
    fftcol2E = fft(newcol2E);
    f2E = interp1(1:length(fftcol2E),fftcol2E,1:360,'spline');
    
    % use difference between actual and theoretical greater than given
    % alpha times standard error to determine health
    stdCol2 = std(abs(f2-f2E));
    stdErrCol2 = stdCol2/sqrt(360);
    if abs(f2-f3)>= alpha*stdErrCol2;
        str = 'You may want to see a doctor about your heart.';
    else
        str = 'You heart is healthy.';
    end
end
