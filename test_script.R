library(ape)

ttn_tree = ape::read.nexus("./problematic_ttn.txt")



write.csv(ttn_tree$tip.label, "problematic_ttn_labels.txt")
