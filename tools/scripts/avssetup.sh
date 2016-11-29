
if [ $# -ne 2 ];
then
    echo "Give AVS_PATH and EDK2_PATH as the arguments to the script"
    return 0
fi

export AVS_PATH=$1
echo -e "AVS_PATH is set to -> \e[93m $AVS_PATH\e[0m"
export EDK2_PATH=$2
echo -e "EDK2_PATH is set to -> \e[93m$EDK2_PATH\e[0m"

ln -s  $AVS_PATH/suites/uefi_app $EDK2_PATH/AppPkg/Applications/Sbsa


ln -s  $AVS_PATH/val               $AVS_PATH/suites/uefi_app
ln -s  $AVS_PATH/platform/pal_uefi $AVS_PATH/suites/uefi_app/pal
ln -s  $AVS_PATH/suites/test_pool  $AVS_PATH/suites/uefi_app

cp $AVS_PATH/tools/scripts/avsbuild.sh $AVS_PATH/suites/uefi_app/