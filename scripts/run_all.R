
# Simple test script
message("Running analysis...")

# Example data creation
df <- data.frame(
  exposed = c("Yes","Yes","No","No","Yes","No"),
  completed = c(1,1,0,0,1,0)
)

# Quick summary
summary_table <- aggregate(completed ~ exposed, df, mean)
print(summary_table)

# Save example output
dir.create("output/tables", recursive = TRUE, showWarnings = FALSE)
write.csv(summary_table, "output/tables/completion_rates.csv", row.names = FALSE)

message("Done! File saved in output/tables/")

