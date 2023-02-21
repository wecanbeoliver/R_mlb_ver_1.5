#타자

Away_batters_table <- c(605141,572204)
Away_batters_table <- unique(Away_batters_table)



Away_batters <- convert_to_vs_pitch_type(Away_batters_table[1])


for (i in Away_batters_table[-1]){
    Away_batters <- bind_rows(Away_batters,convert_to_vs_pitch_type(i))
    
}


write_xlsx(Away_batters, "data/Away_batters.xlsx")


#투수

Away_pitcher <- convert_to_ultimate_pitcher(628711)