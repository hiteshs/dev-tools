#!bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

bash_file=".bash_profile"
user_dir="/Users/hitesh/"

cp -i ${DIR}/../env/.bashrc ${user_dir}
cp -i ${DIR}/../env/.gitconfig ${user_dir}
cp -i ${DIR}/../env/.vimrc ${user_dir}
cp -i ${DIR}/../env/.bash_history_settings ${user_dir}

if [[ ! -e "${user_dir}/${bash_file}" ]]
then
  echo "#!/bin/bash" > ${user_dir}/${bash_file}
fi

echo "" >> ${user_dir}/${bash_file}
echo "source ${user_dir}/.bashrc" >> ${user_dir}/${bash_file}
