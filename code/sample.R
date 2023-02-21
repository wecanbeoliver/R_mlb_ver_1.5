



sample_batters_table <- c(592663,664761,656941,608070,680757,502671,571448,641680,608369)
sample_batters_table <- unique(sample_batters_table)



sample_batters <- convert_to_vs_pitch_type(sample_batters_table[1])


for (i in sample_batters_table[-1]){
    sample_batters <- bind_rows(sample_batters,convert_to_vs_pitch_type(i))
    
}


write_xlsx(sample_batters, "sample_batters.xlsx")
