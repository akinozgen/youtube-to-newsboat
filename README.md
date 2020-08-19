### youtube-to-newsboat

This simple script converts a youtube subscription export to a newsboat rss url list.
First go to [youtube subscription_manager](https://www.youtube.com/subscription_manager?action_takeout=1)
page in order to download your subscription xml file. 

Then run this script with a parameter which is your `subscription_manager` file

```bash
$ curl "https://raw.githubusercontent.com/akinozgen/youtube-to-newsboat/master/ytrss.sh" > ytrss.sh
$ chmod +x ytrss.sh
$ ./ytrss.sh subscription_manager > ~/.newsboat/urls # subscription_manager is the file that youtube will give you. this command replaces your old urls in your ~/.newsboat/urls file
```

OR

```bash
$ ./ytrss.sh subscription_manager >> ~/.newsboat/urls # if you have urls in your file. this is just going to append rss feeds to your ~/.newsboat/urls config.
```

### Important Notes
Just make sure that your system has `paste` and `xmllint` command availability.

#### TODO;
- [x] Script itself :D
- [ ] Chrome/Firefox extension (maybe)
- [ ] Convert rss results to podcast xml will be good too.
