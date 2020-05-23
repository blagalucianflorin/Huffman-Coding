//
// Created by lblaga on 14.05.2020.
//

#ifndef TEMA_SD_4_HUFFMAN_H
#define TEMA_SD_4_HUFFMAN_H

#include <map>
#include <string>
#include <vector>
#include <algorithm>


class Huffman
{
private:
    typedef struct node
    {
        inline node (char value, unsigned int freq) : value (value), freq (freq) {};

        node (const node &old_node);

        char value = 0;

        unsigned int freq = 0;

        node *left = nullptr;

        node *right = nullptr;
    } node;

    node *huff_tree;

    std::map <char, std::string> codes;

    static std::map <char, unsigned int> &get_frequencies (const std::string &input);

    static node &build_tree (const std::vector <std::pair <char, unsigned int>> &frequencies);

    std::map <char, std::string> &generate_codes (const node &my_huff_tree);

    static void generate_codes_aux (const node &curr_node, const std::string &curr_string,
                                    std::map <char, std::string> &codes);

    void decode_aux (const node &curr_node, std::string &curr_string, std::string &output_string);

public:
    std::string &code (const std::string &input);

    std::string decode (std::string output);

    void set_huff_tree (node &my_tree);

    node get_huff_tree () const;

    void set_codes (std::map <char, std::string> my_codes);

    std::map <char, std::string> get_codes () const;
};

#endif //TEMA_SD_4_HUFFMAN_H
