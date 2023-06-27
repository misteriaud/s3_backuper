# s3_backuper

Python utilitary to backup s3 bucket in a personal git remote repo.

# How to use it

1. git clone this repo
2. `python -m venv .venv`
3. `source .venv/bin/activate`
4. `pip install -r requirements.txt`
5. `git clone <backup_repo_path> backup_repo`
6. Set the env variables
7. `jupyter nbconvert --to script main.ipynb`
8. `ipython main.py`

# Inside CRON job

1. open crontab file using `crontab -e`
2. add the following line

```CRONTAB
## call virtualenv python from crontab
0    9    *    *    *    /path/to/virtenv/bin/python /path/to/your_cron_script.py
```
