// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#include <iostream>
#include "src/ext/x64asm/include/x64asm.h"
#include "src/ext/x64asm/src/opcode.h"

using namespace std;

typedef std::map<std::string, std::vector<std::string>>  FamilyTable;

FamilyTable leviathan_x86_family_table = {
    #include "leviathan_x86_family.table"
};


