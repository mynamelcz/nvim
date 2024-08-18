import subprocess,sys

def remove_lines_with_string(file_path, string):
    with open(file_path, 'r') as file:
        lines = file.readlines()

    with open(file_path, 'w') as file:
        for line in lines:
            if string not in line:
                file.write(line)

if __name__ == '__main__':
    # Use Popen to run the external executable file
    process = subprocess.Popen(['compiledb.exe', "make"])
    # Wait for the process to complete
    process.wait()
    # Check the return code to see if the process executed successfully
    if process.returncode == 0:
        print("The executable file was executed successfully")
    else:
        print("The executable file encountered an error during execution")

    for arg in sys.argv:
        remove_lines_with_string("compile_commands.json", arg)
