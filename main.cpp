#include <iostream>
#include <string>

#include "headers/huffman.h"

int main ()
{
    Huffman huff{};
    std::string input = "Hello World!";

    std::cout << "Input string: " << input << "\n\n";

    std::string coded = huff . code (input);
    std::cout << "Coded String: " << coded << "\n\n";


    std::string decoded = huff . decode (coded);
    std::cout << "Decoded String: "<< decoded << "\n\n";

    std::cout << "Character codes:\n";
    auto codes = huff . get_codes ();
    for (const auto &code : codes)
        std::cout << code . first << ": " << code . second << "\n";

    return (0);
}
