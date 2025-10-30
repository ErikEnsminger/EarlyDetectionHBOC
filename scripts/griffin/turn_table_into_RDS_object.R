library(here)
HBOC <- read.table("/Users/erikensminger/Desktop/H4H/project/hereditary/projects/CHARM_Erik/HBOC_pipeline/HBOC_WGS_downsampled_bwa_bams_16102025/2025-10-24_HBOC_WGS_downsampled_bwa_bams_16102025_nucleosome_accessibility_distances.tsv", header = TRUE, sep = "\t", stringsAsFactors = FALSE)

healthy <- read.table("/Users/erikensminger/Desktop/H4H/project/hereditary/projects/CHARM_Erik/HBOC_pipeline/frag_pipeline_HBC_27102025/2025-10-30_frag_pipeline_HBC_27102025_nucleosome_accessibility_distances.tsv", header = TRUE, sep = "\t", stringsAsFactors = FALSE)


# Save the combined healthy dataset
saveRDS(healthy, file = here("raw_data", "griffin", "2025-10-30_frag_pipeline_HBC_27102025_nucleosome_accessibility_distances.rds"))

# Save the HBOC dataset separately
saveRDS(HBOC, file = here("raw_data", "griffin", "2025-10-24_HBOC_WGS_downsampled_bwa_bams_16102025_nucleosome_accessibility_distances.rds"))