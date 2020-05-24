//
// Created by lblaga on 14.05.2020.
//

#include "../headers/huffman.h"


Huffman::node::node (const Huffman::node &old_node)
{
    this -> freq = old_node . freq;
    this -> value = old_node . value;
    this -> left = old_node . left;
    this -> right = old_node . right;
}

std::map <char, unsigned int> &Huffman::get_frequencies (const std::string &input)
{
    auto freq_map = new std::map <char, unsigned int>;

    for (char curr_char : input)
        (*freq_map)[curr_char] += 1;
    return (*freq_map);
}

Huffman::node &Huffman::build_tree (const std::vector <std::pair <char, unsigned int>> &frequencies)
{
    auto node_queue = new std::vector <node>;

    node_queue -> reserve (frequencies . size ());
    for (auto curr_char : frequencies)
        node_queue -> push_back (*(new node (curr_char . first, curr_char . second)));

    while (node_queue -> size () != 1)
    {
        std::sort (node_queue -> begin (), node_queue -> end (),
                   [] (const node &a, const node &b)
                   {
                       return (a . freq > b . freq);
                   }
        );
        auto new_node = new node (0, (*node_queue)[node_queue -> size () - 1] . freq +
                                     (*node_queue)[node_queue -> size () - 2] . freq);
        new_node -> left = new node ((*node_queue)[node_queue -> size () - 1]);
        new_node -> right = new node ((*node_queue)[node_queue -> size () - 2]);
        node_queue -> pop_back (), node_queue -> pop_back ();
        node_queue -> push_back (*new_node);
    }

    return (node_queue -> front ());
}

std::map <char, std::string> &Huffman::generate_codes (const Huffman::node &my_huff_tree)
{
    auto ret_codes = new std::map <char, std::string>;

    generate_codes_aux (my_huff_tree, std::string (""), *ret_codes);

    this -> set_codes (*ret_codes);

    return (*ret_codes);
}

void Huffman::generate_codes_aux (const Huffman::node &curr_node, const std::string &curr_string,
                                  std::map <char, std::string> &codes)
{
    if (curr_node . value != 0)
    {
        codes[curr_node . value] = curr_string;
        return;
    }
    generate_codes_aux (*(curr_node . left), curr_string + "0", codes);
    generate_codes_aux (*(curr_node . right), curr_string + "1", codes);
}

std::string Huffman::code (const std::string &input)
{
    auto frequencies_map = get_frequencies (input);
    std::vector <std::pair <char, unsigned int>> frequencies_vector;
    auto *coded_string = new std::string;

    frequencies_vector . reserve (frequencies_map . size ());
    for (auto freq : frequencies_map)
        frequencies_vector . emplace_back (freq . first, freq . second);

    this -> set_huff_tree (build_tree (frequencies_vector));

    generate_codes (this -> get_huff_tree ());
    for (char curr_char : input)
        (*coded_string) += this -> get_codes () [curr_char];

    return (*coded_string);
}

std::string Huffman::decode (std::string output)
{
    auto decoded_string = new std::string;

    decode_aux (this -> get_huff_tree (), output, *decoded_string);

    return (*decoded_string);
}

void Huffman::decode_aux (const Huffman::node &curr_node, std::string &curr_string, std::string &output_string)
{
    if (curr_node . value != 0)
    {
        output_string += curr_node . value;
        if (curr_string . length() == 0)
            return;
        decode_aux (this -> get_huff_tree (), curr_string, output_string);
    }
    if (curr_string[0] == '0')
    {
        curr_string = curr_string . substr (1, curr_string . size () - 1);
        decode_aux (*(curr_node . left), curr_string, output_string);
    }
    else if (curr_string[0] == '1')
    {
        curr_string = curr_string . substr (1, curr_string . size () - 1);
        decode_aux (*(curr_node . right), curr_string, output_string);
    }
}
