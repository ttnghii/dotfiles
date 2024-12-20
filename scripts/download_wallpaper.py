#!/usr/bin/env python3
import subprocess

import gdown
import inquirer as iq
from loguru import logger


def main():
    url = "https://drive.google.com/file/d/1J-voIphjsK-dmrqVHWtIORIAL6TtNyGD"
    wall_ques = iq.Confirm(
        name="wallpaper",
        message="Do you want to download all wallpapers \n(CAUTION: its size is almost 400MB)? (Default: No)",
        default="No",
    )
    extract_ques = iq.Confirm(
        name="extract",
        message="Extract the zip file? Output path is $HOME/wallpapers/ (Default: Yes)",
        default="Yes",
    )

    wall_ans = iq.prompt([wall_ques])
    if wall_ans == "Yes":
        gdown.download(url, quiet=True)
        logger.info("Downloaded all wallpapers")
        extract_ans = iq.prompt([extract_ques])
        if extract_ans == "Yes":
            subprocess.run(["unzip", "wallpaper.zip", "-d", "$HOME/wallpapers/"])
            logger.info("Extracted all wallpapers")
    else:
        logger.info("Oh no, you don't want to download all wallpapers")


if __name__ == "__main__":
    logger.add(
        sink="wallpaper.log",
        format="{time:YYYY-MM-DD HH:mm} | {level} | {message}",
        level="DEBUG",
        encoding="utf-8",
    )
    main()
