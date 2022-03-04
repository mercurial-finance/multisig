set -ex
echo $1
bash scripts/prepare-mnde-transfer.sh ${@: 2}
