import os
import dotenv

dotenv.load_dotenv()
project_dir = os.getenv("PROJECT_DIR")


def func1():
    print("print from package1.module.func1()")
    print(f"Project Directory: {project_dir}")
    print(f"python path is {os.getenv('PYTHONPATH')}")
