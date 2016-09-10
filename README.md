# souper_trawler
Hack-A-Week 9: A python script to scan a webpage and pull down relevant files.

Specifically, to pull down files from one of my class webpages so that I don't
have to manually spend time recursively clicking on each link. 

Note: It has not been tested on other webpages, so it might behave erratically
when used on a different site.

### Usage:
- Run the file with `python [filename]` or in the editor of your choice 

### Features:
- Recursively scan links to get possible file URLs
- Choose which links to recursively scan so you don't grab too much
- Choose which files to download so you don't download any huge files or
malware without first being prompted
- Download all selected files to a folder called "files"

### What it does:
- Grabs HTML of a webpage and finds all the links using BeautifulSoup4
- Saves those links to a file called "hrefs.txt" along with the level of recursion
- Using hrefs.txt, prompts the user for which URLs to download from and saves
the selected URLs to "selected_hrefs.txt"
- Using selected_hrefs.txt, pulls down a file from each URL and saves it into
the "files" directory
- Selects file name based on whatever is after the last '/' in the URL. For
example, "https://www.example.com/myfile.pdf" would yield a file name of
"myfile.pdf"

### What it doesn't do:
- Scan for viruses or gigantic files
- Analyze found URLs in any way

### Included Files:
```
- README.md..................This readme file
- souper_trawler.py..........Python file to do everything stated above
- hrefs.txt..................Found links on the EECE2412 class website
- selected_hrefs.txt.........Selected links from hrefs.txt
- files/.....................Files pulled down from the EECE2412 class website
- diagrams/..................Relevant diagrams and images.
```
### Example Output:

### Searching for relevant URLs:

![alt text][outputimage]
[outputimage]: https://github.com/ztaira14/souper_trawler/blob/master/diagrams/SearchingURLs.png "Searching URLs"

### Selecting relevant URLs:

![alt text][outputimage2]
[outputimage2]: https://github.com/ztaira14/souper_trawler/blob/master/diagrams/SelectingURLs.png "Selecting URLs"

### Getting relevant URLs:

![alt text][outputimage3]
[outputimage3]: https://github.com/ztaira14/souper_trawler/blob/master/diagrams/GettingURLs.png "Getting URLs"
