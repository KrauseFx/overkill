# overkill 💥🎵

Did iTunes ever launch without you opening the app? 

Use _overkill_ to instantly kill iTunes once it opened itself, so your workflow isn't interrupted.

Reasons why iTunes launches:

- You connect an iPhone or iPad to your Mac
- You click play/pause while listening to a web-based music player (e.g. SoundCloud)
- You launch iTunes by clicking on the icon by mistake
- Someone sent you a link to an iOS app
- You click on a link on the web, and didn't expect it to be an Music link
- You open a file in Finder, and forgot to change the default app to [VLC](https://www.videolan.org/vlc/index.html)

Another nice benefit of this is that you don't have to manually close iTunes when you update your Xcode installation.

[![assets/Picture.jpg](assets/Picture.jpg)](https://youtu.be/r1zhJ5wn5sk)

I first tweeted about this idea [over a year ago](https://twitter.com/krausefx/status/649706992655708164).

Many of iTunes' popups require you to click them away, unless you want to manually force quit iTunes.

![assets/iTunesLogin.png](assets/iTunesLogin.png)

#### Video Demo:

iTunes usually launches as soon as you plugin your iPhone. With _overkill_ running, the iTunes process is killed immediately, so your workflow isn't interrupted.

[![assets/Thumbnail.jpg](assets/Thumbnail.jpg)](https://youtu.be/r1zhJ5wn5sk)

## Usage

```
ruby overkill.rb
```

To launch process in the background use

```
ruby overkill.rb &
```

## Disclaimer

This repo is meant as a joke, the script uses polling to monitor the active processes. The script is in no way meant to be a serious application.
