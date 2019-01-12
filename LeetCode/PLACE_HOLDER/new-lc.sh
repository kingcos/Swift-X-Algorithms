#!/bin/sh

max_num_digits=3
main_path=$(cd `dirname $0`; pwd)/..
# echo $main_path

xx=*

if [ -n "$*" ] && [ -n "$2" ]; then
    standard_name=$*

    # 0. Generate new name with format
    # eg. 1. Two Sum -> 001-Two-Sum & 001 Two Sum
    num=`echo $standard_name | cut -d \. -f 1`
    loop_count=`expr $max_num_digits - ${#num}`

    while [ $loop_count -gt 0 ]
    do
        num="0$num"
        loop_count=`expr $loop_count - 1`
    done

    name=`echo $standard_name | cut -d \. -f 2`

    display_name="$num$name"
    folder_name=$num`echo ${name// /-}`

    new_path="$main_path/$folder_name"

    playground_original_path=$main_path/PLACE_HOLDER/NO.-PROBLEM_NAME.playground
    playground_new_path=$new_path/$folder_name.playground
    readme_original_path=$main_path/PLACE_HOLDER/README.md
    readme_new_path=$new_path/README.md

    # echo $playground_original_path
    # echo $playground_new_path
    # echo $readme_original_path
    # echo $readme_new_path

    if [ ! -x "$new_path" ] && [ ! -x "$playground_new_path" ] && [ ! -x "$readme_new_path" ]; then
        # 1. Create new folder
        mkdir "$new_path"

        # 2. Copy files
        cp -r $playground_original_path $playground_new_path
        cp -r $readme_original_path $readme_new_path

        # 3. Update problem's info in README.md
        if [ `uname` = "Linux" ]; then
            sed -i "s/NO. PROBLEM_NAME/$display_name/" "$readme_new_path"
        elif [ `uname` = "Darwin" ]; then
            sed -i "" "s/NO. PROBLEM_NAME/$display_name/" "$readme_new_path"
        else
            echo "⚠️  ERROR: Your system is not supported."
        fi

        echo "🎉 DONE!"
    else
        echo "⚠️  ERROR: The folder or files is already exist. ⚠️"
    fi
    # 4. Print new folder path for repo's README
    echo ""
    echo "💻 Display name: $display_name"
    echo "📁 Folder name: $folder_name"
else
    echo "⚠️  ERROR: Please input problem's standard name from LeetCode website (eg. 1. Two Sum). ⚠️"
fi
