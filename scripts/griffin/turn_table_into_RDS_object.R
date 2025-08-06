HBOC <- read.table("/Users/erikensminger/Library/CloudStorage/OneDrive-UniversityofToronto/EarlyDetectionHBOC/raw_data/griffin/2024-10-14_HBOC_fragmentomics_Oct9_nucleosome_accessibility_distances.tsv", header = TRUE, sep = "\t", stringsAsFactors = FALSE)

CHARM_healthy <- read.table("/Users/erikensminger/Library/CloudStorage/OneDrive-UniversityofToronto/EarlyDetectionHBOC/raw_data/griffin/2024-11-26_HBC_fragmentomics_OICR_PMGC_nucleosome_accessibility_distances.tsv", header = TRUE, sep = "\t", stringsAsFactors = FALSE)

HCC_healthy <- read.table("/Users/erikensminger/Library/CloudStorage/OneDrive-UniversityofToronto/EarlyDetectionHBOC/raw_data/griffin/2025-01-23_HCC_Healthy_fragmentomics_nucleosome_accessibility_distances.tsv", header = TRUE, sep = "\t", stringsAsFactors = FALSE)


healthy_combined <- rbind(CHARM_healthy, HCC_healthy)

# Save the combined healthy dataset
saveRDS(healthy_combined, file = "/Users/erikensminger/Library/CloudStorage/OneDrive-UniversityofToronto/EarlyDetectionHBOC/raw_data/griffin/2024-11-26_HBC_fragmentomics_OICR_PMGC_and_2025-01-23_HCC_Healthy_fragmentomics_nucleosome_accessibility_distances.rds")

# Save the HBOC dataset separately
saveRDS(HBOC, file = "/Users/erikensminger/Library/CloudStorage/OneDrive-UniversityofToronto/EarlyDetectionHBOC/raw_data/griffin/2024-10-14_HBOC_fragmentomics_Oct9_nucleosome_accessibility_distances.rds")