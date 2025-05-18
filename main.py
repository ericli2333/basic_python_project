import os
import dotenv

dotenv.load_dotenv()
project_dir = os.getenv("PROJECT_DIR")


def print_project_dir():
    print(f"Project Directory: {project_dir}")


def print_env_var(var_name):
    value = os.getenv(var_name)
    if value:
        print(f"{var_name}: {value}")
    else:
        print(f"{var_name} not found in environment variables.")


if __name__ == "__main__":
    print_project_dir()
    print_env_var("PYTHONPATH")
