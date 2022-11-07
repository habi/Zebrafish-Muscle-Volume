# -----------------------------------------------
# -- archival of raw data to research storage ---
# -----------------------------------------------
# 1272 to archive
echo "1272 -> archive"
rsync --human-readable --verbose --recursive --update --omit-dir-times --include="*/" --include="*.?og" --include="*.c?v" --include="*.?oi" --include="*.?at" --include="*_spr*.bmp" --include="*.txt" --include="*.md" --include="*.sb" --include="*.info" --include="*.?nc" --include="*.bkp" --include="*.?if" --include="*.pdf" --include="*.md" --exclude="*" ~/1272/Zebrafish_Carolina_Muscles/ ~/research-storage-uct/Archiv_Tape/Zebrafish_Carolina_Muscles/
# --------------------------------------------------
# ---------- Copy *all* data to nadias drive -------
# --------------------------------------------------
# 1272 to nadia
echo "1272 -> nadia"
rsync --human-readable --verbose --recursive --update --omit-dir-times ~/1272/Zebrafish_Carolina_Muscles/ ~/research-storage-nadia/
# ---------------------------------------
# ---------- 'internal' copies ----------
# ---------------------------------------
# Copy everything except projection images to two fastSSDs
echo "1272 -> FastSSD anaklin25"
rsync --human-readable --verbose --recursive --update --omit-dir-times --include="*/" --include="*.?og" --include="*.c?v" --include="*_spr*.bmp" --include="*.txt" --include="*.md" --exclude="*" ~/research-storage-uct/Archiv_Tape/Zebrafish_Carolina_Muscles/ /media/habi/Fast_SSD/Zebrafish_Carolina_Muscles/
echo "1272 -> FastSSD anaklin04"
rsync --human-readable --verbose --recursive --update --omit-dir-times --include="*/" --exclude="*.?if" ~/research-storage-uct/Archiv_Tape/Zebrafish_Carolina_Muscles/ ~/anaklin04-f/Zebrafish_Carolina_Muscles/
# Sync the two fastSSDs
echo "FastSSD anaklin04 -> FastSSD anaklin25"
rsync --human-readable --verbose --recursive --update --omit-dir-times ~/anaklin04-f/Zebrafish_Carolina_Muscles/ /media/habi/Fast_SSD/Zebrafish_Carolina_Muscles/
echo "FastSSD anaklin25 -> FastSSD anaklin04"
rsync --human-readable --verbose --recursive --update --omit-dir-times /media/habi/Fast_SSD/Zebrafish_Carolina_Muscles/ ~/anaklin04-f/Zebrafish_Carolina_Muscles/
# Generate us a copy of the 'support' files which we need for the publication
echo "Logfiles archive -> Github repository logfiles"
rsync --human-readable --verbose --recursive --update --omit-dir-times --include="*/" --include="*.log" --include="*.csv" --include="*.txt" --include="*.md" --exclude="*" ~/research-storage-uct/Archiv_Tape/Zebrafish_Carolina_Muscles/ ~/P/Documents/Zebrafish-Carolina/logfiles/