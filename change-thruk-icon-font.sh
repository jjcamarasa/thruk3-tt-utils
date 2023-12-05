#!/bin/bash
# Changes in all tt files fa-solid and fa- tags to uil
# v1.0
# Make backup of your templates folders first
# Cahnge the path to your own

TEMPLATE_DIR='/opt/omd/sites/basic/etc/thruk/templates'
NEW_NAME='uil'
FA2UIL_FILE='/opt/thruk/icons-names-fa-need-translate.txt'

cd ${TEMPLATE_DIR}
# Replace all fa ocurrences with uil
echo "Changing fa-solid and fa- ocurrences to uil..."
sed -i 's/fa-solid/uil/g; s/fa-/uil-/g' *.tt

# Change all fa icons names that not exist in unicons
for item in $(cat ${FA2UIL_FILE});do
 fa_name=${item%%;*};
 uil_name=${item##*;};
 echo "Changing ${fa_name} to ${uil_name}"
 sed -i "s/${fa_name}/${uil_name}/g" *.tt;
done

echo "Finished"

exit 0

