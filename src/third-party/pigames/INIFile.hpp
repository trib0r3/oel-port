/*
	The MIT License

	Copyright (c) 2017 PiGames ( https://github.com/PiGames )

	Permission is hereby granted, free of charge, to any person obtaining a copy
	of this software and associated documentation files (the "Software"), to deal
	in the Software without restriction, including without limitation the rights
	to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
	copies of the Software, and to permit persons to whom the Software is
	furnished to do so, subject to the following conditions:

	The above copyright notice and this permission notice shall be included in
	all copies or substantial portions of the Software.

	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
	IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
	FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
	AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
	LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
	OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
	THE SOFTWARE.
*/

#pragma once

#include <cinttypes>
#include <string>
#include <vector>

namespace pi {
/*
===============================================================================
Created by: Condzi
	Class created for manipulating INI files. Remember that you must Parse the
	file after you open it. If you leave Save() to default it will override
	opened file.

===============================================================================
*/
class INIFile final
{
	struct record_t
	{
		std::string section, name, value;
		record_t( std::string _section = "", std::string _name = "", std::string _value = "" );
	};

public:
	bool Open( const std::string& path );
#if defined USE_CPP_17
	bool Save( const std::string& path = "", bool override = true );
#else
	void Save( const std::string& path = "" );
#endif
	void Parse();
	void Clear();

	std::string GetValue( const std::string& section, const std::string& name ) const;
	std::string* GetValuePtr( const std::string& section, const std::string& name );
	std::vector<record_t> GetParsedData();
	std::vector<record_t>& GetParsedDataRef();
	void AddValue( const std::string& section, const std::string& name, const std::string& value );

private:
	std::string pathToFile = "";
	std::vector<std::string> rawData;
	std::vector<record_t> parsedData;

	std::string parseAsSection( const std::string& str );
	void makeSerializeData( std::vector<std::string>& to );
};
}