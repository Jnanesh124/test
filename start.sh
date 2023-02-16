if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Jnanesh124/test /test 
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /test
fi
cd /test
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
