# Generalized additive models (GAMs)
library(mgcv)

respiratory.gam <- gam(total_respiratory ~ s(week, bs="cc",k=-1) + precip_agg4wkCAT + 
                  ndvi_log + ndvi_8wkL_log + surf + surf_1wkL + surf_2wkL + 
                  surf_3wkL + surf_4wkL + surf_5wkL + surf_6wkL + surf_7wkL + 
                  surf_8wkL + temp_mean_scale + temp_mean_4wkL_scale + 
                  temp_mean_8wkL_scale + temp_range_scale + temp_range_1wkL_scale + 
                  temp_range_2wkL_scale + temp_range_3wkL_scale + 
                  temp_range_4wkL_scale + temp_range_5wkL_scale + temp_range_6wkL_scale +
                  temp_range_7wkL_scale + temp_range_8wkL_scale + humidity_mean_log + 
                  humidity_mean_4wkL_log + humidity_mean_8wkL_log + humidity_range_log +
                  humidity_range_4wkL_log + humidity_range_8wkL_log + 
                  s(total_resp_1wkL,k=-1) + s(conflict, dist_displace_log) + 
                  s(wos,bs="cc",k=-1) + s(consults_log,k=-1) + s(lat,lon,bs="sos",k=21), 
                family = nb, gamma = 1.5, select = T, data=ewarn, method = "REML") 

diarrhea.gam <- gam(total_diarrhea ~ s(week, bs="cc",k=-1) + precip_agg6wkCAT + 
                  ndvi_log + ndvi_8wkL_log + surf + surf_1wkL + surf_2wkL + 
                  surf_3wkL + surf_4wkL + surf_5wkL + surf_6wkL + surf_7wkL + 
                  surf_8wkL + temp_mean_scale + temp_mean_4wkL_scale + 
                  temp_mean_8wkL_scale + temp_range_scale + temp_range_1wkL_scale + 
                  temp_range_2wkL_scale + temp_range_3wkL_scale + 
                  temp_range_4wkL_scale + temp_range_5wkL_scale + temp_range_6wkL_scale +
                  temp_range_7wkL_scale + temp_range_8wkL_scale + humidity_mean_log + 
                  humidity_mean_4wkL_log + humidity_mean_8wkL_log + humidity_range_log +
                  humidity_range_4wkL_log + humidity_range_8wkL_log + 
                  s(total_diar_1wkL,k=-1) + s(conflict, dist_displace_log) + 
                  s(wos,bs="cc",k=-1) + s(consults_log,k=-1) + s(lat,lon,bs="sos",k=21),
                family = nb, gamma = 1.5, select = T, data=ewarn, method = "REML")


# Seasonal decomposition
