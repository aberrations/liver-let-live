receptor_high_coeffs=polyfit([-1, -.75, -.5, -.25, 0, .25, .5, .75, 1],[1, .5, .4, .35,  .3, .35, .4, .5, 1],4);
receptor_low_coeffs=polyfit([-1, -.65, -.25, 0, .25, .65, 1],[1, .65, .8, .9, .8, .65, 1],4);
signaling_low_coeffs=polyfit([-1, 0, 1],[1, .6, 1],2);
signaling_high_coeffs=polyfit([-1, 0, 1],[1, 1, 1],2);
x=linspace(-1,1,1000);

y_receptor_low=polyval(receptor_low_coeffs,x);
y_receptor_high=polyval(receptor_high_coeffs,x);
y_signaling_high=polyval(signaling_high_coeffs,x);
y_signaling_low=polyval(signaling_low_coeffs,x);

figure
subplot(1,2,1)
plot(x, y_receptor_high, x, y_receptor_low, 'LineWidth', 2.0)
xlim([-1.25 1.25])
ylim([.25 1.1])
xlabel('Dimensionless Radius')
ylabel('Concentration')
title('Simulated Receptor Repressor Concentration')
legend('High (b=5)','Low (b=0)')
grid on

subplot(1,2,2)
plot(x, y_signaling_low, x, y_signaling_high, 'LineWidth', 2.0)
xlim([-1.25 1.25])
ylim([.25 1.1])
xlabel('Dimensionless Radius')
ylabel('Concentration')
title('Simulated Signaling Repressor Concentration')
legend('High (b=5)','Low (b=0)')
grid on