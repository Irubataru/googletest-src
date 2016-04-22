ifeq ($(CXX),g++)
 CXX11FLAG = -std=c++0x
else
 CXX11FLAG = -std=c++11
endif

SRCS_VPATH := src

TARGETS := libgtest.a gtest_main.o
SRCS := gtest-all.cc

CXXFLAGS_$(d) := -g -pthread $(CXX11FLAG) -I$(d)
INCLUDES_$(d) := $(d) $(d)/include

libgtest.a_DEPS = gtest-all.o
