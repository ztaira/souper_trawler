import sys
import os
import re
import bs4
import requests
import urllib.request

# A function to create a list of all the links on the class webpage
def pull_possible_links(url, recursion_level):
    """soup_pul(string url, int recursion_level)"""
    # set the new recursion level
    new_recursion_level = recursion_level + 1
    # get all the href tags
    with urllib.request.urlopen(url) as response:
           html = response.read()
    soup = bs4.BeautifulSoup(html, 'html.parser')
    a_tags = soup.find_all(href=True)
    with open('hrefs.txt', 'a+') as workfile:
        for result in a_tags:
            href = result.get('href')
            print("Tag: ", href)
            if href[-1] == '/':
                print("Search this url? y/n")
                answer = sys.stdin.read(2)
                if 'y' in answer:
                    pull_possible_links(url+href, new_recursion_level)
            else:
                if (href[0:3] != "htt"):
                    workfile.write(url + href + " " + str(new_recursion_level) + "\n")
                else:
                    workfile.write(href + " " + str(new_recursion_level) + "\n")

# A function to choose which links to download stuff from
# Because downloading massive files and/or malware willy-nilly is bad
def select_possible_links():
    file_lines = []
    with open('selected_hrefs.txt', 'w') as workfile:
        with open('hrefs.txt', 'r') as readfile:
            print("Get url? y/n")
            for line in readfile:
                print("Line: " + line)
                answer = sys.stdin.read(2)
                if 'y' in answer:
                    workfile.write(line.split(' ')[0] + "\n")
                else:
                    workfile.write("\n")

# Download files from the selected links
def pull_links():
    pattern = re.compile('.*\/(.*)')
    limit_counter = 0
    with open('selected_hrefs.txt', 'r') as readfile:
        for line in readfile:
            result = pattern.match(line)
            if result is None:
                pass
            elif limit_counter < 100:
                file_name = os.getcwd() + "/files/" + result.groups(1)[0]
                urllib.request.urlretrieve(line, file_name)
                print("Got " + file_name + " from " + line)
                limit_counter += 1
            elif limit_counter > 100:
                print("Limit Reached!")

if __name__ == "__main__":
    pull_possible_links('http://www.ece.neu.edu/courses/eece2412/2016fa/', 0)
    select_possible_links()
    pull_links()

