if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Blesson-23/Film-Clubb /Film-Club
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Film-Club
fi
cd /Film-Club
pip3 install -U -r requirements.txt
echo "Starting Bot....👀"
python3 bot.py
