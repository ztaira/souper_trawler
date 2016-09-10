f=10.^[-2:0.01:3];
A_OL=2e5;f_BOL=1e6/A_OL,C=10e-6;
R_1=1e3;R_2=5e3;A_tgt=R_2/R_1
A_vOL=1./(1/A_tgt+1/A_OL+1i*(f/f_BOL-1./(2*pi*f*C*R_2)));
figure;semilogx(f,20*log10(abs(A_vOL)));grid on;
xlabel('f, Frequency, Hz.');ylabel('A_{vOL}, Amplifier Gain, dB');

figure;semilogx(f,180/pi*angle(A_vOL));grid on;
xlabel('f, Frequency, Hz.');ylabel('Amplifier Phase, deg');


f_high_pass= 1/(2*pi*R_2*C)*5
f_b=f_BOL*(R_1/R_2+1/A_OL)
fzero=sqrt(f_BOL./(2*pi*C*R_2))


A_vOL_hi=1./(1/A_tgt+1/A_OL+1i*(f/f_BOL));
A_vOL_lo=1./(1/A_tgt+1/A_OL+1i*(-1./(2*pi*f*C*R_2)));
figure;semilogx(f,20*log10(abs(A_vOL)),'b',...
                f,20*log10(abs(A_vOL_hi)),'g--',...
		f,20*log10(abs(A_vOL_lo)),'r--');grid on;
xlabel('f, Frequency, Hz.');ylabel('A_{vOL}, Amplifier Gain, dB');
