#plots in case of black and white

p1 <- ggplot() +
  geom_line(data=siedlSnK_dist_df_1000, aes(x=n, y=siedlSnK_dist_v)) +
  scale_x_continuous(name="Schnurkeramische Befunde") +
  scale_y_continuous(name="Entfernung in m")+
  theme(axis.ticks = element_blank(), axis.text.x = element_blank())

p2 <- ggplot() +
  geom_line(data=siedlfBZ_dist_df_1000, aes(x=n,y=siedlfBZ_dist_v)) +
  scale_x_continuous(name="Frühbronzezeitliche Befunde") +
  scale_y_continuous(name="Entfernung in m")+
  theme_bw()+
  theme(axis.ticks = element_blank(), axis.text.x = element_blank())


p3 <- ggplot()+
  geom_line(data=siedlsBZ_dist_df_1000, aes(x=n, y=siedlsBZ_dist_v)) +
  scale_x_continuous(name="Spätbronzezeitliche Befunde") +
  scale_y_continuous(name="Entfernung in m")+
  theme_bw()+
  theme(axis.ticks = element_blank(), axis.text.x = element_blank())


p4 <- ggplot()+
  geom_line(data=siedlaeEZ_dist_df_1000, aes(x=n, y=siedlaeEZ_dist_v)) +
  scale_x_continuous(name="Ältereisenzeitliche Befunde") +
  scale_y_continuous(name="Entfernung in m")+
  theme_bw()+
  theme(axis.ticks = element_blank(), axis.text.x = element_blank())

p5 <- ggplot()+
  geom_line(data=siedlsBZ_aeEZ_dist_df_1000, aes(x=n, y=siedlsBZ_aeEZ_dist_v)) +
  scale_x_continuous(name="Spätbronze-/Ältereisenzeitliche Befunde") +
  scale_y_continuous(name="Entfernung in m")+
  theme_bw()+
  theme(axis.ticks = element_blank(), axis.text.x = element_blank())




ggplot() +
  geom_density(data = siedlSnK_dist_df, aes(x = siedlSnK_dist_df[,1], color = "1 SnK")) +
  geom_density(data = siedlfBZ_dist_df, aes(x = siedlfBZ_dist_df[,1], color = "2 fBZ"))  +
  geom_density(data = siedlsBZ_dist_df, aes(x = siedlsBZ_dist_df[,1], color = "3 sBZ"))+
  geom_density(data = siedlsBZ_aeEZ_dist_df, aes(x = siedlsBZ_aeEZ_dist_df[,1], color = "4 sBZ/äEZ")) +
  geom_density(data = CSR_dist_df, aes(x = CSR_dist_df[,1], color = "5 CSR")) +
  ggtitle("")+
  scale_colour_grey(start = 0.8, end = 0.2, labels = c("Schnurkeramik", "Aunjetitzer Kultur","Spätbronzezeit","Spätbronze-/ältere Eisenzeit", "CSR"))
  theme_bw() +
  theme(legend.position="bottom", legend.title=element_blank())+
  scale_linetype_identity() +
  scale_x_continuous(name="Entfernung der Siedlungsbefunde zueinander (m)")+
  scale_y_continuous(name="Dichte (dimensionsloses Maß)")



ggplot() +
  geom_density(data = siedlSnK_dist_df_1000, aes(x = siedlSnK_dist_df_1000[,1], color = "1 SnK")) +
  geom_density(data = siedlfBZ_dist_df_1000, aes(x = siedlfBZ_dist_df_1000[,1], color = "2 fBZ"))  +
  geom_density(data = siedlsBZ_dist_df_1000, aes(x = siedlsBZ_dist_df_1000[,1], color = "3 sBZ"))+
  geom_density(data = siedlsBZ_aeEZ_dist_df_1000, aes(x = siedlsBZ_aeEZ_dist_df_1000[,1], color = "4 sBZ/äEZ")) +
  geom_density(data = CSR_dist_df_1000, aes(x = CSR_dist_df_1000[,1], color = "5 CSR")) +
  ggtitle("")+
  theme_bw()+
  scale_colour_grey(start = 0.8, end = 0.2, labels = c("SnK", "fBZ","sBZ","sBZ/äEZ", "CSR"))+
  theme(legend.position="bottom", legend.title=element_blank())+
  scale_x_continuous(name="Entfernung der gleichdatierten Befunde zueinander (m)")+
  scale_y_continuous(name = "Dichte (dimensionsloses Maß)")



ggplot()+
  geom_line(data = siedlSnK_dist_df_1000, aes(x = siedlSnK_dist_v, y = prozent, color="1 SnK")) +
geom_line(data = siedlfBZ_dist_df_1000, aes(x = siedlfBZ_dist_v, y = prozent,  color = "2 fBZ"))+
geom_line(data = siedlsBZ_dist_df_1000, aes(x = siedlsBZ_dist_v, y = prozent, color ="3 sBZ"))+
geom_line(data = siedlsBZ_aeEZ_dist_df_1000, aes(x = siedlsBZ_aeEZ_dist_v, y = prozent, color ="4 sBZ/äEZ")) +
geom_line(data = CSR_dist_df_1000, aes(x = CSR_dist_v, y = prozent, color="5 CSR"))+
ggtitle("")+
  theme_bw()+
  scale_colour_grey(start = 0.8, end = 0.2, labels = c("SnK", "fBZ","sBZ","sBZ/äEZ", "CSR"))+
  theme(legend.position="bottom", legend.title=element_blank())+
  scale_x_continuous(name="Entfernung auf 1000m eingeschränkt")+
  scale_y_continuous(name = "kumulativer Anteil")


ggplot() +
  geom_density(data = siedlSnK_dist_df_500, aes(x = siedlSnK_dist_df_500[,1], color = "1 SnK")) +
  geom_density(data = siedlfBZ_dist_df_500, aes(x = siedlfBZ_dist_df_500[,1], color = "2 fBZ"))  +
  geom_density(data = siedlsBZ_dist_df_500, aes(x = siedlsBZ_dist_df_500[,1], color = "3 sBZ"))+
  geom_density(data = siedlsBZ_aeEZ_dist_df_500, aes(x = siedlsBZ_aeEZ_dist_df_500[,1], color = "4 sBZ/äEZ")) +
  geom_density(data = CSR_dist_df_1000, aes(x = CSR_dist_df_1000[,1], color = "5 CSR")) +
  theme(legend.position="bottom", legend.title=element_blank())+
  ggtitle("")+
  theme_bw()+
  scale_colour_grey(start = 0.8, end = 0.2, labels = c("SnK", "fBZ","sBZ","sBZ/äEZ", "CSR"))+
  scale_x_continuous(name="Entfernung auf 500 m eingeschränkt")



ggplot() +
  geom_boxplot(data = boxplot_vgl, aes(kultur, dist)) +
  geom_boxplot(data = Flaech_Dist, aes(Art, Strecke)) +
  ggtitle("")+
  theme_bw()+
  scale_x_discrete(labels=c("SnK","fBZ","sBZ", "äEZ", "Abstände \n zw. Flächen", "Längste Flächen- \n seite"))+
  theme(axis.title.x = element_blank())+
  ylab("Meter")
