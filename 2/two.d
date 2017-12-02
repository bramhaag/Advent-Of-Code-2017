import std.stdio;
import std.conv;
import std.string;
import std.ascii;

void main()
{
    writeln(solve("5 9 2 8\n9 4 7 3\n3 8 6 5"));
}

int solve(string input) 
{
    int[][] values = parse(input);

    int sum = 0;
    foreach (i; 0 .. values.length) 
    {
        foreach (j; 0 .. values[i].length) 
        {
            int value = values[i][j];
            if(value == 0) {
                continue;
            }

            foreach (k; 0 .. values[i].length) {
                if(k == j) {
                    continue;
                }

                int divisor = values[i][k];

                if(divisor == 0) {
                    continue;
                }

                if(value % divisor == 0) 
                {
                    sum += value/divisor;
                }
            }
        }
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