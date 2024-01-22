if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Mayank997756/Manku /Manku
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Manku
fi
cd /Manku
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
