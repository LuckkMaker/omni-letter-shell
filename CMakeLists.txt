# Copyright (c) 2024 LuckkMaker
# All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Add the console configuration file
set(CONSOLE_CFG_SOURCE_FILE ${CMAKE_CURRENT_LIST_DIR}/console_config.in)
set(CONSOLE_CFG_TARGET_FILE ${OMNI_CONSOLE_CFG_DIR}/console_config.h)
omni_add_configure_file(${CONSOLE_CFG_SOURCE_FILE} ${CONSOLE_CFG_TARGET_FILE})

add_library(omni-letter-shell INTERFACE)

file(GLOB OMNI_LETTER_SHELL_SOURCES
    "src/shell.c"
    "src/shell_cmd_list.c"
    "src/shell_companion.c"
    "src/shell_ext.c"
    "extensions/log/log.c"
)

target_sources(omni-letter-shell INTERFACE
    ${OMNI_LETTER_SHELL_SOURCES}
)

target_include_directories(omni-letter-shell INTERFACE
    "include"
    "extensions/log"
)
