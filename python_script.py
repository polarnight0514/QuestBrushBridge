import sys

def main():
    if len(sys.argv) > 1:
        event_info = sys.argv[1]
        if event_info == "button_pressed":
            print("hello")
        else:
            print("unexpected event")
    else:
        print("hello world")

if __name__ == '__main__':
    main()