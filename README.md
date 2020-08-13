### youtube-to-newsboat

This simple script converts a youtube subscription export to a newsboat rss url list.
First go to [youtube subscription_manager](https://www.youtube.com/subscription_manager?action_takeout=1)
page in order to download your subscription xml file. 

Then run this script with a parameter which is your `subscription_manager.xml` file

```bash
$ curl `#will be added#` > subscription_rss.sh
$ chmod +x subscription_rss.sh
$ ./subscription_rss.sh subscription_manager.xml # depends on your situation. this is file path of the xml.
```

#### TODO;
- [ ] Script itself :D
- [ ] Chrome/Firefox extension (maybe)
- [ ] Convert rss results to podcast xml will be good too.
