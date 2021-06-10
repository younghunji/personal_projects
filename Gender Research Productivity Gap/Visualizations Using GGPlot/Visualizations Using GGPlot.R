# Loading dependencies
library(gridExtra)
library(ggplot2)

# Loading datasets
## Study 1: Mathematics
s1_math_all <- read.csv(file.choose(), header = TRUE)
s1_math_f <- read.csv(file.choose(), header = TRUE)
s1_math_m <- read.csv(file.choose(), header = TRUE)
## Study 2: Genetics
s2_gen_all <- read.csv(file.choose(), header = TRUE)
s2_gen_f <- read.csv(file.choose(), header = TRUE)
s2_gen_m <- read.csv(file.choose(), header = TRUE)
## Study 3a: Applied Psychology
s3_app_psy_all <- read.csv(file.choose(), header = TRUE)
s3_app_psy_f <- read.csv(file.choose(), header = TRUE)
s3_app_psy_m <- read.csv(file.choose(), header = TRUE)
## Study 3b: Mathematical Psychology
s3_mat_psy_all <- read.csv(file.choose(), header = TRUE)
s3_mat_psy_f <- read.csv(file.choose(), header = TRUE)
s3_mat_psy_m <- read.csv(file.choose(), header = TRUE)

# Study 1 Histograms
## Women
hist_s1f <- ggplot(s1_math_f, aes(TotalPubs)) + 
  geom_histogram(binwidth = 1, color="black", fill="palegreen") + 
  theme(panel.background = element_blank(), 
        axis.text = element_text(color="black"), 
        axis.line = element_line(color = "black")) + 
  scale_y_continuous(breaks=seq(0, 2500, 500), expand = c(0,0)) + 
  scale_x_continuous(breaks = seq(0,20,2)) + 
  theme(axis.title = element_text(face="bold", size=10)) + 
  labs(x= "Publications", y = "Frequency") + 
  theme(axis.title = element_text(face="bold", size=10)) + 
  theme(axis.text = element_text(size=10)) + 
  coord_cartesian(ylim=c(0, 2500), xlim = c(1.5, 20)) + 
  ggtitle("Women's Publications in Mathematics") +
  theme(plot.title = element_text(hjust = 0.5, face="bold", size=11))
## Men
hist_s1m <- ggplot(s1_math_m, aes(TotalPubs)) + 
  geom_histogram(binwidth = 1, color="black", fill="darkblue") + 
  theme(panel.background = element_blank(), 
        axis.text = element_text(color="black"), 
        axis.line = element_line(color = "black")) + 
  scale_y_continuous(breaks=seq(0, 2500, 500), expand = c(0,0)) + 
  scale_x_continuous(breaks = seq(0,20,2)) + 
  theme(axis.title = element_text(face="bold", size=10)) + 
  labs(x= "Publications", y = "Frequency") + 
  theme(axis.title = element_text(face="bold", size=10)) + 
  theme(axis.text = element_text(size=10)) + 
  coord_cartesian(ylim=c(0, 2500), xlim = c(1.5, 20)) + 
  ggtitle("Men's Publications in Mathematics") +
  theme(plot.title = element_text(hjust = 0.5, face="bold", size=11))
## Plotting
grid.arrange(hist_s1f, hist_s1m, ncol = 2)

# Study 1 Histograms (close-up of right tails)
## Women (pubs = 4 or more)
hist_s1f_close <- ggplot(s1_math_f, aes(TotalPubs)) + 
  geom_histogram(binwidth = 1, color="black", fill="palegreen") + 
  theme(panel.background = element_blank(), 
        axis.text = element_text(color="black"), 
        axis.line = element_line(color = "black")) + 
  scale_y_continuous(breaks=seq(0, 140, 20), expand = c(0,0)) + 
  scale_x_continuous(breaks = seq(4,20,1)) + 
  theme(axis.title = element_text(face="bold", size=10)) + 
  labs(x= "Publications", y = "Frequency") + 
  theme(axis.title = element_text(face="bold", size=10)) + 
  theme(axis.text = element_text(size=10)) + 
  coord_cartesian(ylim=c(0, 140), xlim = c(4.3, 20)) + 
  ggtitle("Women's Publications in Mathematics
          (4 or more)") +
  theme(plot.title = element_text(hjust = 0.5, face="bold", size=11)) 
## Men (pubs = 4 or more)
hist_s1m_close <- ggplot(s1_math_m, aes(TotalPubs)) + 
  geom_histogram(binwidth = 1, color="black", fill="darkblue") + 
  theme(panel.background = element_blank(), 
        axis.text = element_text(color="black"), 
        axis.line = element_line(color = "black")) + 
  scale_y_continuous(breaks=seq(0, 140, 20), expand = c(0,0)) + 
  scale_x_continuous(breaks = seq(4,20,1)) + 
  theme(axis.title = element_text(face="bold", size=10)) + 
  labs(x= "Publications", y = "Frequency") + 
  theme(axis.title = element_text(face="bold", size=10)) + 
  theme(axis.text = element_text(size=10)) + 
  coord_cartesian(ylim=c(0, 140), xlim = c(4.3, 20)) + 
  ggtitle("Men's Publications in Mathematics
          (4 or more)") +
  theme(plot.title = element_text(hjust = 0.5, face="bold", size=11)) 
## Plotting
grid.arrange(hist_s1f_close, hist_s1m_close, ncol = 2)

# Study 1 Kernel density plots
ggplot(s1_math_all, aes(TotalPubs, fill=Gender, color=Gender))+
  geom_density(bw=1, lwd=0.8, alpha=0.3) + 
  theme(panel.background = element_blank(), 
        axis.text = element_text(color="black"), 
        axis.line = element_line(color = "black")) + 
  scale_x_continuous(expand = c(0, 0)) + 
  scale_y_continuous(expand = c(0, 0)) + 
  labs(x= "Publications", y = "Density") + 
  theme(axis.title = element_text(face="bold", size=14)) + 
  theme(legend.text=element_text(size=14),
        legend.title = element_text(size=14)) + 
  theme(legend.title=element_blank(), legend.position=c(.9,.60)) +
  scale_fill_manual(values = c("palegreen","darkblue")) + 
  scale_color_manual(values = c("green4","darkblue")) +
  ggtitle("Publications in Mathematics by Gender") +
  theme(plot.title = element_text(hjust = 0.5, face="bold", size=14))

# Study 1 Kernel density plots (close-up of right tails)
ggplot(s1_math_all, aes(TotalPubs, fill=Gender, color=Gender))+
  geom_density(bw=1, lwd=0.8, alpha=0.3) + 
  theme(panel.background = element_blank(), 
        axis.text = element_text(color="black"), 
        axis.line = element_line(color = "black")) + 
  scale_x_continuous(expand = c(0, 0)) + 
  scale_y_continuous(expand = c(0, 0)) + 
  labs(x= "Publications", y = "Density") + 
  theme(axis.title = element_text(face="bold", size=14)) + 
  theme(legend.text=element_text(size=14), 
        legend.title = element_text(size=14)) + 
  theme(legend.title=element_blank(), legend.position=c(.9,.60)) + 
  coord_cartesian(ylim=c(0, 0.01)) + 
  scale_fill_manual(values = c("palegreen","darkblue")) +
  scale_color_manual(values = c("green4","darkblue")) + 
  ggtitle("Publications in Mathematics by Gender (Right Tails)") +
  theme(plot.title = element_text(hjust = 0.5, face="bold", size=14))

# Study 2 Histograms
## Women
hist_s2f <- ggplot(s2_gen_f, aes(TotalPubs)) + 
  geom_histogram(binwidth = 1, color="black", fill="palegreen") + 
  theme(panel.background = element_blank(), 
        axis.text = element_text(color="black"), 
        axis.line = element_line(color = "black")) + 
  scale_y_continuous(breaks=seq(0, 21000, 5000), expand = c(0,0)) + 
  scale_x_continuous(breaks = seq(0,130,20)) + 
  theme(axis.title = element_text(face="bold", size=10)) + 
  labs(x= "Publications", y = "Frequency") + 
  theme(axis.title = element_text(face="bold", size=10)) + 
  theme(axis.text = element_text(size=10)) + 
  coord_cartesian(ylim=c(0, 21000), xlim = c(6.5, 130)) + 
  ggtitle("Women's Publications in Genetics") +
  theme(plot.title = element_text(hjust = 0.5, face="bold", size=11)) 
# Men
hist_s2m <- ggplot(s2_gen_m, aes(TotalPubs)) + 
  geom_histogram(binwidth = 1, color="black", fill="darkblue") + 
  theme(panel.background = element_blank(), 
        axis.text = element_text(color="black"), 
        axis.line = element_line(color = "black")) + 
  scale_y_continuous(breaks=seq(0, 21000, 5000), expand = c(0,0)) + 
  scale_x_continuous(breaks = seq(0,130,20)) + 
  theme(axis.title = element_text(face="bold", size=10)) + 
  labs(x= "Publications", y = "Frequency") + 
  theme(axis.title = element_text(face="bold", size=10)) + 
  theme(axis.text = element_text(size=10)) + 
  coord_cartesian(ylim=c(0, 21000), xlim = c(6.5, 130)) + 
  ggtitle("Men's Publications in Genetics") +
  theme(plot.title = element_text(hjust = 0.5, face="bold", size=11)) 
## Plotting
grid.arrange(hist_s2f, hist_s2m, ncol = 2)

# Study 2 Histograms (close-up of right tails)
## Women (pubs = 8 or more)
hist_s2f_close <- ggplot(s2_gen_f, aes(TotalPubs)) + 
  geom_histogram(binwidth = 1, color="black", fill="palegreen") + 
  theme(panel.background = element_blank(), 
        axis.text = element_text(color="black"), 
        axis.line = element_line(color = "black")) + 
  scale_y_continuous(breaks=seq(0, 200, 20), expand = c(0,0)) + 
  scale_x_continuous(breaks = seq(8,128,20)) + 
  theme(axis.title = element_text(face="bold", size=10)) + 
  labs(x= "Publications", y = "Frequency") + 
  theme(axis.title = element_text(face="bold", size=10)) + 
  theme(axis.text = element_text(size=10)) + 
  coord_cartesian(ylim=c(0, 200), xlim = c(13, 128)) + 
  ggtitle("Women's Publications in Genetics
          (8 or more)") +
  theme(plot.title = element_text(hjust = 0.5, face="bold", size=11)) 
## Men (pubs = 8 or more)
hist_s2m_close <- ggplot(s2_gen_m, aes(TotalPubs)) + 
  geom_histogram(binwidth = 1, color="black", fill="darkblue") + 
  theme(panel.background = element_blank(), 
        axis.text = element_text(color="black"), 
        axis.line = element_line(color = "black")) + 
  scale_y_continuous(breaks=seq(0, 200, 20), expand = c(0,0)) + 
  scale_x_continuous(breaks = seq(8,128,20)) + 
  theme(axis.title = element_text(face="bold", size=10)) + 
  labs(x= "Publications", y = "Frequency") + 
  theme(axis.title = element_text(face="bold", size=10)) + 
  theme(axis.text = element_text(size=10)) + 
  coord_cartesian(ylim=c(0, 200), xlim = c(13, 128)) + 
  ggtitle("Men's Publications in Genetics
          (8 or more)") +
  theme(plot.title = element_text(hjust = 0.5, face="bold", size=11)) 
## Plotting
grid.arrange(hist_s2f_close, hist_s2m_close, ncol = 2)

# Study 2 Kernel density plots
ggplot(s2_gen_all, aes(TotalPubs, fill=Gender, color=Gender))+
  geom_density(bw=1, lwd=0.8, alpha=0.3) + 
  theme(panel.background = element_blank(), 
        axis.text = element_text(color="black"), 
        axis.line = element_line(color = "black")) + 
  scale_x_continuous(expand = c(0, 0)) + 
  scale_y_continuous(expand = c(0, 0)) + 
  labs(x= "Publications", y = "Density") + 
  theme(axis.title = element_text(face="bold", size=14)) + 
  theme(legend.text=element_text(size=14),
        legend.title = element_text(size=14)) + 
  theme(legend.title=element_blank(), legend.position=c(.9,.60)) +
  scale_fill_manual(values = c("palegreen","darkblue")) + 
  scale_color_manual(values = c("green4","darkblue")) + 
  ggtitle("Publications in Genetics by Gender") +
  theme(plot.title = element_text(hjust = 0.5, face="bold", size=14))

# Study 2 Kernel density plots (close-up of right tails)
ggplot(s2_gen_all, aes(TotalPubs, fill=Gender, color=Gender))+
  geom_density(bw=1, lwd=0.8, alpha=0.3) + 
  theme(panel.background = element_blank(), 
        axis.text = element_text(color="black"), 
        axis.line = element_line(color = "black")) + 
  scale_x_continuous(expand = c(0, 0)) + 
  scale_y_continuous(expand = c(0, 0)) + 
  labs(x= "Publications", y = "Density") + 
  theme(axis.title = element_text(face="bold", size=14)) +
  theme(legend.text=element_text(size=13), 
        legend.title = element_text(size=14)) + 
  theme(legend.title=element_blank(), legend.position=c(.9,.60)) + 
  coord_cartesian(ylim=c(0, 0.0005)) +
  scale_fill_manual(values = c("palegreen","darkblue")) +
  scale_color_manual(values = c("green4","darkblue")) + 
  ggtitle("Publications in Genetics by Gender (Right Tails)") +
  theme(plot.title = element_text(hjust = 0.5, face="bold", size=14))

# Study 3a Histograms
## Women
hist_s3af <- ggplot(s3_app_psy_f, aes(TotalPubs)) + 
  geom_histogram(binwidth = 1, color="black", fill="palegreen") + 
  theme(panel.background = element_blank(), 
        axis.text = element_text(color="black"), 
        axis.line = element_line(color = "black")) +
  scale_y_continuous(breaks=seq(0, 1600, 200), expand = c(0,0)) + 
  scale_x_continuous(breaks = seq(0,36,5)) + 
  theme(axis.title = element_text(face="bold", size=10)) +
  labs(x= "Publications", y = "Frequency") + 
  theme(axis.title = element_text(face="bold", size=10)) + 
  theme(axis.text = element_text(size=10)) + 
  coord_cartesian(ylim=c(0, 1600), xlim = c(2.3, 36)) + 
  ggtitle("Women's Publications in Applied Pyschology") +
  theme(plot.title = element_text(hjust = 0.5, face="bold", size=10)) 
## Men
hist_s3am <- ggplot(s3_app_psy_m, aes(TotalPubs)) + 
  geom_histogram(binwidth = 1, color="black", fill="darkblue") +
  theme(panel.background = element_blank(), 
        axis.text = element_text(color="black"), 
        axis.line = element_line(color = "black")) +
  scale_y_continuous(breaks=seq(0, 1600, 200), expand = c(0,0)) +
  scale_x_continuous(breaks = seq(0,36,5)) + 
  theme(axis.title = element_text(face="bold", size=10)) +
  labs(x= "Publications", y = "Frequency") + 
  theme(axis.title = element_text(face="bold", size=10)) + 
  theme(axis.text = element_text(size=10)) +
  coord_cartesian(ylim=c(0, 1600), xlim = c(2.3, 36)) + 
  ggtitle("Men's Publications in Applied Pyschology") +
  theme(plot.title = element_text(hjust = 0.5, face="bold", size=10)) 
## Plotting
grid.arrange(hist_s3af, hist_s3am, ncol = 2)

# Study 3a Histograms (close-up of right tails)
## Women (pubs = 4 or more)
hist_s3af_close <- ggplot(s3_app_psy_f, aes(TotalPubs)) + 
  geom_histogram(binwidth = 1, color="black", fill="palegreen") +
  theme(panel.background = element_blank(), 
        axis.text = element_text(color="black"), 
        axis.line = element_line(color = "black")) +
  scale_y_continuous(breaks=seq(0, 120, 20), expand = c(0,0)) +
  scale_x_continuous(breaks = seq(4,36,4)) + 
  theme(axis.title = element_text(face="bold", size=10)) +
  labs(x= "Publications", y = "Frequency") + 
  theme(axis.title = element_text(face="bold", size=10)) + 
  theme(axis.text = element_text(size=10)) +
  coord_cartesian(ylim=c(0, 120), xlim = c(5.1, 36)) + 
  ggtitle("Women's Publications in
  Applied Pyschology (4 or more)") +
  theme(plot.title = element_text(hjust = 0.5, face="bold", size=11)) 
## Men (pubs = 4 or more)
hist_s3am_close <- ggplot(s3_app_psy_m, aes(TotalPubs)) + 
  geom_histogram(binwidth = 1, color="black", fill="darkblue") +
  theme(panel.background = element_blank(), 
        axis.text = element_text(color="black"), 
        axis.line = element_line(color = "black")) +
  scale_y_continuous(breaks=seq(0, 120, 20), expand = c(0,0)) +
  scale_x_continuous(breaks = seq(4,36,4)) + 
  theme(axis.title = element_text(face="bold", size=10)) +
  labs(x= "Publications", y = "Frequency") + 
  theme(axis.title = element_text(face="bold", size=10)) + 
  theme(axis.text = element_text(size=10)) +
  coord_cartesian(ylim=c(0, 120), xlim = c(5.1, 36)) + 
  ggtitle("Men's Publications in
  Applied Pyschology (4 or more)") +
  theme(plot.title = element_text(hjust = 0.5, face="bold", size=11))
## Plotting
grid.arrange(hist_s3af_close, hist_s3am_close, ncol = 2)

# Study 3a Kernel density plots
ggplot(s3_app_psy_all, aes(TotalPubs, fill=Gender, color=Gender))+
  geom_density(bw=1, lwd=0.8, alpha=0.3) +
  theme(panel.background = element_blank(), 
        axis.text = element_text(color="black"),
        axis.line = element_line(color = "black")) +
  scale_x_continuous(expand = c(0, 0)) +
  scale_y_continuous(expand = c(0, 0)) + 
  labs(x= "Publications", y = "Density") +
  theme(axis.title = element_text(face="bold", size=14)) +
  theme(axis.text = element_text(size=13)) +
  theme(legend.text=element_text(size=14)) + 
  theme(legend.title=element_blank(), legend.position=c(.9,.60)) +
  coord_cartesian(xlim=c(1, 35)) +
  scale_fill_manual(values = c("palegreen","darkblue")) +
  scale_color_manual(values = c("green4","darkblue")) + 
  ggtitle("Publications in Applied Psychology by Gender") +
  theme(plot.title = element_text(hjust = 0.5, face="bold", size=14))

# Study 3a Kernel density plots (close-up of right tails)
ggplot(s3_app_psy_all, aes(TotalPubs, fill=Gender, color=Gender))+
  geom_density(bw=1, lwd=0.8, alpha=0.3) +
  theme(panel.background = element_blank(), 
        axis.text = element_text(color="black"),
        axis.line = element_line(color = "black")) + 
  scale_x_continuous(expand = c(0, 0)) +
  scale_y_continuous(expand = c(0, 0)) + 
  labs(x= "Publications", y = "Density") +
  theme(axis.title = element_text(face="bold", size=14)) + 
  theme(axis.text = element_text(size=13)) +
  theme(legend.text=element_text(size=14)) + 
  theme(legend.title=element_blank(), legend.position=c(.9,.60)) +
  coord_cartesian(ylim=c(0, 0.01), xlim=c(1,35)) +
  scale_fill_manual(values = c("palegreen","darkblue")) +
  scale_color_manual(values = c("green4","darkblue")) + 
  ggtitle("Publications in Applied Psychology by Gender (Right Tails)") +
  theme(plot.title = element_text(hjust = 0.5, face="bold", size=14))

# Study 3b Histograms
## Women
hist_s3bf <- ggplot(s3_mat_psy_f, aes(TotalPubs)) + 
  geom_histogram(binwidth = 1, color="black", fill="palegreen") +
  theme(panel.background = element_blank(), 
        axis.text = element_text(color="black"), 
        axis.line = element_line(color = "black")) +
  scale_y_continuous(breaks=seq(0, 2100, 200), expand = c(0,0)) +
  scale_x_continuous(breaks = seq(0,32,4)) + 
  theme(axis.title = element_text(face="bold", size=10)) +
  labs(x= "Publications", y = "Frequency") + 
  theme(axis.title = element_text(face="bold", size=10)) + 
  theme(axis.text = element_text(size=10)) +
  coord_cartesian(ylim=c(0, 1800), xlim = c(2, 32)) + 
  ggtitle("Women's Publications in
  Mathematical Psychology") +
  theme(plot.title = element_text(hjust = 0.5, face="bold", size=11)) 
## Men
hist_s3bm <- ggplot(s3_mat_psy_m, aes(TotalPubs)) + 
  geom_histogram(binwidth = 1, color="black", fill="darkblue") +
  theme(panel.background = element_blank(), 
        axis.text = element_text(color="black"), 
        axis.line = element_line(color = "black")) +
  scale_y_continuous(breaks=seq(0, 1800, 200), expand = c(0,0)) +
  scale_x_continuous(breaks = seq(0,32,4)) + 
  theme(axis.title = element_text(face="bold", size=10)) +
  labs(x= "Publications", y = "Frequency") + 
  theme(axis.title = element_text(face="bold", size=10)) + 
  theme(axis.text = element_text(size=10)) +
  coord_cartesian(ylim=c(0, 1800), xlim = c(2, 32)) + 
  ggtitle("Men's Publications in
  Mathematical Psychology") +
  theme(plot.title = element_text(hjust = 0.5, face="bold", size=11)) 
## Plotting
grid.arrange(hist_s3bf, hist_s3bm, ncol = 2)

# Study 3b Histograms (close-up of right tails)
## Women (pubs = 4 or more)
hist_s3bf_close <- ggplot(s3_mat_psy_f, aes(TotalPubs)) + 
  geom_histogram(binwidth = 1, color="black", fill="palegreen") +
  theme(panel.background = element_blank(), 
        axis.text = element_text(color="black"),
        axis.line = element_line(color = "black")) +
  scale_y_continuous(breaks=seq(0, 140, 20), expand = c(0,0)) +
  scale_x_continuous(breaks = seq(4,32,2)) + 
  theme(axis.title = element_text(face="bold", size=10)) +
  labs(x= "Publications", y = "Frequency") + 
  theme(axis.title = element_text(face="bold", size=10)) +
  theme(axis.text = element_text(size=10)) +
  coord_cartesian(ylim=c(0, 140), xlim = c(4.9, 32)) +
  ggtitle("Women's Publications in
          Mathematical Psychology (4 or more)") +
  theme(plot.title = element_text(hjust = 0.5, face="bold", size=11)) 
## Men (pubs = 4 or more)
hist_s3bm_close <- ggplot(s3_mat_psy_m, aes(TotalPubs)) + 
  geom_histogram(binwidth = 1, color="black", fill="darkblue") +
  theme(panel.background = element_blank(), 
        axis.text = element_text(color="black"), 
        axis.line = element_line(color = "black")) +
  scale_y_continuous(breaks=seq(0, 140, 20), expand = c(0,0)) +
  scale_x_continuous(breaks = seq(4,32,2)) + 
  theme(axis.title = element_text(face="bold", size=10)) +
  labs(x= "Publications", y = "Frequency") + 
  theme(axis.title = element_text(face="bold", size=10)) + 
  theme(axis.text = element_text(size=10)) +
  coord_cartesian(ylim=c(0, 140), xlim = c(4.9, 32)) + 
  ggtitle("Men's Publications in
          Mathematical Psychology (4 or more)") +
  theme(plot.title = element_text(hjust = 0.5, face="bold", size=11)) 
## Plotting
grid.arrange(hist_s3bf_close, hist_s3bm_close, ncol = 2)

# Study 3b Kernel density plots
ggplot(s3_mat_psy_all, aes(TotalPubs, fill=Gender, color=Gender))+
  geom_density(bw=1, lwd=0.8, alpha=0.3) +
  theme(panel.background = element_blank(), 
        axis.text = element_text(color="black"),
        axis.line = element_line(color = "black")) + 
  scale_x_continuous(expand = c(0, 0)) +
  scale_y_continuous(expand = c(0, 0)) +
  labs(x= "Publications", y = "Density") +
  theme(axis.title = element_text(face="bold", size=14)) + 
  theme(axis.text = element_text(size=13)) +
  theme(legend.text=element_text(size=14)) + 
  theme(legend.title=element_blank(), legend.position=c(.9,.60)) +
  scale_fill_manual(values = c("palegreen","darkblue")) +
  scale_color_manual(values = c("green4","darkblue")) + 
  ggtitle("Publications in Mathematical Psychology by Gender") +
  theme(plot.title = element_text(hjust = 0.5, face="bold", size=14))

# Study 3b Kernel density plots (close-up of right tails)
ggplot(s3_mat_psy_all, aes(TotalPubs, fill=Gender, color=Gender))+
  geom_density(bw=1, lwd=0.8, alpha=0.3) +
  theme(panel.background = element_blank(), 
        axis.text = element_text(color="black"),
        axis.line = element_line(color = "black")) +
  scale_x_continuous(expand = c(0, 0)) +
  scale_y_continuous(expand = c(0, 0)) + 
  labs(x= "Publications", y = "Density") +
  theme(axis.title = element_text(face="bold", size=14)) +
  theme(axis.text = element_text(size=13)) +
  theme(legend.text=element_text(size=14)) +
  theme(legend.title=element_blank(), legend.position=c(.9,.60)) +
  coord_cartesian(ylim=c(0, 0.01)) + 
  scale_fill_manual(values = c("palegreen","darkblue")) +
  scale_color_manual(values = c("green4","darkblue")) + 
  ggtitle("Publications in Mathematical Psychology by Gender (Right Tails)") +
  theme(plot.title = element_text(hjust = 0.5, face="bold", size=14))