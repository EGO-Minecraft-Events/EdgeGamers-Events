import os
import sys
import shutil
from distutils.dir_util import copy_tree

# where the python command in terminal was ran
# this should be under CCU/functions/ego/EVENT_NAME/src
cwd = os.getcwd()

def main():
    # requires one positional argument
    # so far, the arguments are file_path, (update | clean)
    # so to run this file, do "python3 ../../../../lib.py update"
    # where "clean" just removes the event library 
    if len(sys.argv) < 2:
        raise Exception("Requires command line argument as 'update' or 'clean'")

    option = sys.argv[1]
    if option == "update":
        # removes the event library lol
        event_lib_path = remove()

        update(event_lib_path)
    elif option == "clean":
        remove()
    else:
        raise Exception("Command line argument must be 'remove' or 'clean'")

def remove():
    # checks if the last directory is "src"
    if os.path.basename(os.path.normpath(cwd)) != "src":
        raise Exception("Expected this to be used under functions/ego/EVENT_NAME/src")

    # creates the event library path
    event_lib_path = os.path.join(cwd, "lib")

    # if the path exists, prints out the version file
    # and deletes the library path
    if os.path.isdir(event_lib_path):
        old_version_file = os.path.join(event_lib_path, "version.txt")
        if os.path.isfile(old_version_file):
            with open(old_version_file) as file:
                print("old version: {}".format(file.readline()))

        shutil.rmtree(event_lib_path)
    
    return event_lib_path

def update(event_lib_path):
    lib_path = cwd
    # removes the first four folders
    for _ in range(4):
        lib_path = os.path.dirname(lib_path)

    # adds "lib" once it is under CCU
    lib_path = os.path.join(lib_path, "lib")

    # makes sure the library exists
    assert os.path.isdir(lib_path)

    # gets the new version file
    version_file = os.path.join(lib_path, "version.txt")
    if os.path.isfile(version_file):
        with open(version_file) as file:
            print("new version: {}".format(file.readline()))
    else:
        raise Exception("version.txt not found under global library")

    # copies the original library to the event library
    copy_tree(lib_path, event_lib_path)

main()
