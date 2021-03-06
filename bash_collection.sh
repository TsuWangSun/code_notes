#mount
sshfs stud14@140.109.90.240:~/server_dir ~/local_dir

# apt
sudo apt install xxxx
# remove
sudo apt remove xxxx
sudo apt purge xxxx
sudo apt autoremove
sudo apt autoclean
# check & update
apt list --installed
sudo apt update
sudo apt upgrade

#grep
grep -rl 'search_text_in_files'



# for
for i in {1..15}
do something \ #continue
'options' & #background
done

for i in $(seq 1 15)
do something
done

# replace a list of A to B
awk -F'\t' 'NR>1{print $1,$2}' file.tsv |\ # from second row, use coolumn 1 and 2 and send to next
sed 's/[[:punct:]]//g' |\ # opt remove unnecessary punctuation and send to "while"
while read var1 var2;
do sed -i 's/'"$abre"'/'"$virus"'/g' target_file;
sed -i "s/$abre/$virus/g" target_file; #alternative
done

# math
expr 1 + 1


#jupyter on server
ssh -L 8080:localhost:8080 stsuwang@koa.local # local
jupyter notebook --no-browser --port=8080 # server, after former command


# mount
sshfs stsuwang@koa.local:/kulab/data/storage/stsuwang/ ~/koa.local
sshfs stsuwang@koa.local:/kulab/scratch/stsuwang/ ~/ku_scratch

# link / shortcut
ln -s -T /mother_path/ /link_path_new_dir/

# file and dir size
sudo du -h --max-depth=1
alias siize='sudo du -h --max-depth=1' # in .bashrc


# screen
screen -S stsuwang_job1
ctrl+AD
screen -list
screen -r 23518


# add path to .bashrc (sys var)
export PATH=/path/dir:$PATH



awk -F'\t' 'NR>1{print $1}' viruslist-single-pan1125.tsv | sed 's/ $//g' | \
while read abre
do cat /kulab/scratch/stsuwang/orthomcl1125/species1125/$abre.fasta | grep '>' | sed 's/>//g' | while read acs 
do if ! grep -q $acs visualization/groups1125.txt; then
echo -e $abre'\t'$acs
fi
done
done > visualization/pt_not_in_groups_1125.tsv &



while read acs; 
do if ! grep -q $acs gm1013.fasta; then
echo $acs
fi
done < acs1013.txt

# else

# ffmpeg
# add picture to audio
ffmpeg -r 1 -loop 1 -y -i PICTURE.png \
-i AUDIO.mp3 -c:a copy -r 1 -vcodec libx264 \
-shortest -vf scale=1280:720 VIDEO.avi; 

for x in *.wav; \
do ffmpeg -r 1 -loop 1 -y -i black.png \
-i $x -c:a copy -r 1 -vcodec libx264 \
-shortest -vf scale=1280:720 $x.avi; 
done

# cut movie
ffmpeg -ss 00:00:00 -to 00:06:50  -i INPUT.mp4 -c copy OUTPUT.mp4


# unzip partition zip file / multiple parts
for x in *.zip; do unzip -d /folderPATH/ -o -u $x & done






###########eg###############

# get a column, remove one element, paste to original file
paste <(awk 'NR>1{print $1}' SupplementaryDatasetS2.List_of_NCLDV_protein_orthogroups.v4.txt) <(cat SupplementaryDatasetS2.List_of_NCLDV_protein_orthogroups.v4.txt) -d' ' > SupplementaryDatasetS2.List_of_NCLDV_protein_orthogroups.v5.txt

# remove 2nd column
awk '{$2=""; print $0}' SupplementaryDatasetS2.List_of_NCLDV_protein_orthogroups.v5.txt > SupplementaryDatasetS2.List_of_NCLDV_protein_orthogroups.v6.txt
# remove 2nd,3rd column
awk '{$2=$3=""; print $0}' SupplementaryDatasetS2.List_of_NCLDV_protein_orthogroups.v5.txt > SupplementaryDatasetS2.List_of_NCLDV_protein_orthogroups.v6.txt

sed -i 's/: /:/g' 

