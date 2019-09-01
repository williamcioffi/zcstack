::there are two programs on windows named plink so specify path
::version for filtering

C:\Users\wrc14\bin\plink_win64_20190617\plink --noweb --file "C:\Users\wrc14\Desktop\git\zcstack\output_pgdspider\globirad3_zcstack_populations.snps" --indep 50 5 2 --hwe 0.05 midp --maf 0.01 --nonfounders --allow-extra-chr --out "C:\Users\wrc14\Desktop\git\zcstack\output_plink\globirad3_zcstack_populations_filtered"

C:\Users\wrc14\bin\plink_win64_20190617\plink --make-bed --file "C:\Users\wrc14\Desktop\git\zcstack\output_pgdspider\globirad3_zcstack_populations.snps" --extract "C:\Users\wrc14\Desktop\git\zcstack\output_plink\globirad3_zcstack_populations_filtered.prune.in" --allow-extra-chr --out "C:\Users\wrc14\Desktop\git\zcstack\output_plink\globirad3_zcstack_populations_pruned"

C:\Users\wrc14\bin\plink_win64_20190617\plink --bfile "C:\Users\wrc14\Desktop\git\zcstack\output_plink\globirad3_zcstack_populations_pruned" --recode A --allow-extra-chr --out "C:\Users\wrc14\Desktop\git\zcstack\output_plink\globirad3_zcstack_populations_pruned"

C:\Users\wrc14\bin\plink_win64_20190617\plink --bfile "C:\Users\wrc14\Desktop\git\zcstack\output_plink\globirad3_zcstack_populations_pruned" --recode tab --out "C:\Users\wrc14\Desktop\git\zcstack\output_plink\globirad3_zcstack_populations_pruned" --allow-extra-chr

C:\Users\wrc14\bin\plink_win64_20190617\plink --file "C:\Users\wrc14\Desktop\git\zcstack\output_plink\globirad3_zcstack_populations_pruned" --freq --allow-extra-chr -out "C:\Users\wrc14\Desktop\git\zcstack\output_plink\globirad3_zcstack_populations_pruned"


::special filtered version for sequoia 
C:\Users\wrc14\bin\plink_win64_20190617\plink --noweb --file "C:\Users\wrc14\Desktop\git\zcstack\output_pgdspider\globirad3_zcstack_populations.snps" --indep 50 5 2 --hwe 0.05 midp --maf 0.4 --nonfounders --allow-extra-chr --out "C:\Users\wrc14\Desktop\git\zcstack\output_plink\globirad3_zcstack_sequoia4"
C:\Users\wrc14\bin\plink_win64_20190617\plink --make-bed --file "C:\Users\wrc14\Desktop\git\zcstack\output_pgdspider\globirad3_zcstack_populations.snps" --extract "C:\Users\wrc14\Desktop\git\zcstack\output_plink\globirad3_zcstack_sequoia4.prune.in" --allow-extra-chr --out "C:\Users\wrc14\Desktop\git\zcstack\output_plink\globirad3_zcstack_sequoia4p"
C:\Users\wrc14\bin\plink_win64_20190617\plink --bfile "C:\Users\wrc14\Desktop\git\zcstack\output_plink\globirad3_zcstack_sequoia4p" --recode A --allow-extra-chr --out "C:\Users\wrc14\Desktop\git\zcstack\output_plink\globirad3_zcstack_sequoia4p"