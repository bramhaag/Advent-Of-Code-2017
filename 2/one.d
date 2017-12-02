import std.stdio;
import std.conv;
import std.string;
import std.ascii;

void main()
{
    writeln(solve("5 1 9 5\n7 5 3\n2 4 6 8"));
}

int solve(string input) 
{
    int[][] values = parse(input);

    int sum = 0;
    int min = 0;
    int max = 0;
    foreach (i; 0 .. values.length) 
    {
        foreach (j; 0 .. values[i].length) 
        {
            int value = values[i][j];

            if(j == 0) {
                min = value;
                max = value;
            }

            if(value == 0) 
            {
                continue;
            }

            if(value > max) {
                max = value;
            }

            if(value < min) {
                min = value;
            }
        }

        sum += max - min;
    }

    return sum;
}

int[][] parse(string input) 
{
    string[] lines = splitLines(input);
    int[][] values = new int[][](lines.length, 20);

    foreach (i; 0 .. lines.length) {
        string[] numbers = lines[i].split;
        foreach (j; 0 .. numbers.length) {
            string value = strip(numbers[j]);
            if(!isNumeric(value)) {
                continue;
            }

            values[i][j] = to!int(value);
        }
    }

    return values;
}