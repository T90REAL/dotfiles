local ls = require('luasnip')
local parse_snippet = ls.parser.parse_snippet
local s = ls.snippet
local sn = ls.snippet_node
local isn = ls.indent_snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local events = require "luasnip.util.events"
local ai = require "luasnip.nodes.absolute_indexer"
local extras = require "luasnip.extras"
local fmt = extras.fmt
local m = extras.m
local l = extras.l
local postfix = require "luasnip.extras.postfix".postfix

return {
    s("trigger", {
        i(1, "First jump"),
        t(" :: "),
        sn(2, {
            i(1, "Second jump"),
            t" : ",
            i(2, "Third jump")
        })
    }),
    s('dir', t('const vector<pair<int, int>> dir{{1, 0}, {-1, 0}, {0, 1}, {0, -1}};')),
    s('dir8', t('const vector<pair<int, int>> dir{{1, 0}, {-1, 0}, {0, 1}, {0, -1}, {1, 1}, {1, -1}, {-1, 1}, {-1, -1}};')),
    s('mint', {
        parse_snippet(1, [[
template <int MOD>
struct ModInt {
    int val;
    ModInt(ll v = 0) : val(v % MOD) { if (val < 0) val += MOD; };
    ModInt operator+() const { return ModInt(val); }
    ModInt operator-() const { return ModInt(MOD - val); }
    ModInt inv() const {
        auto a = val, m = MOD, u = 0, v = 1;
        while (a != 0) { auto t = m / a; m -= t * a; swap(a, m); u -= t * v; swap(u, v); }
        assert(m == 1);
        return u;
    }
    ModInt pow(ll n) const {
        auto x = ModInt(1);
        auto b = *this;
        while (n > 0) {
            if (n & 1) x *= b;
            n >>= 1;
            b *= b;
        }
        return x;
    }
    friend ModInt operator+ (ModInt lhs, const ModInt& rhs) { return lhs += rhs; }
    friend ModInt operator- (ModInt lhs, const ModInt& rhs) { return lhs -= rhs; }
    friend ModInt operator* (ModInt lhs, const ModInt& rhs) { return lhs *= rhs; }
    friend ModInt operator/ (ModInt lhs, const ModInt& rhs) { return lhs /= rhs; }
    ModInt& operator+=(const ModInt& x) { if ((val += x.val) >= MOD) val -= MOD; return *this; }
    ModInt& operator-=(const ModInt& x) { if ((val -= x.val) < 0) val += MOD; return *this; }
    ModInt& operator*=(const ModInt& x) { val = int64_t(val) * x.val % MOD; return *this; }
    ModInt& operator/=(const ModInt& x) { return *this *= x.inv(); }
    bool operator==(const ModInt& b) const { return val == b.val; }
    bool operator!=(const ModInt& b) const { return val != b.val; }
    friend std::istream& operator>>(std::istream& is, ModInt& x) noexcept { return is >> x.val; }
    friend std::ostream& operator<<(std::ostream& os, const ModInt& x) noexcept { return os << x.val; }
};

]]),
        c(2, { t"using mint = ModInt<1'000'000'007>;", t"using mint = ModInt<998244353>;" })
        }
    ),
    parse_snippet('mini', [[
#include <bits/stdc++.h>
using namespace std;
#ifndef LOCAL // https://tgc54.com/posts/debug_output_header/
#define de(...)
#define de2(...)
#endif
using ll = long long;

int main() {
    ios::sync_with_stdio(false);
    cin.tie(nullptr);
    $0
    return 0;
}
    ]]),
    parse_snippet('temp', [[
#include <bits/stdc++.h>
using namespace std;
#ifndef LOCAL // https://tgc54.com/posts/debug_output_header/
#define de(...)
#define de2(...)
#endif
using ll = long long;

void test_case() {
	$0
}

int main() {
    ios::sync_with_stdio(false);
    cin.tie(nullptr);
    int tt = 1;
    cin >> tt;
    while (tt--) {
        test_case();
    }
}
    ]]),
    parse_snippet('competitive', [[
#include <map>
#include <set>
#include <cmath>
#include <array>
#include <queue>
#include <stack>
#include <string>
#include <vector>
#include <cassert>
#include <iomanip>
#include <cstring>
#include <sstream>
#include <istream>
#include <numeric>
#include <iterator>
#include <iostream>
#include <algorithm>
#include <unordered_map>
using namespace std;
#define gogo ios_base::sync_with_stdio(false);cin.tie(NULL);cout.tie(NULL);
#define assertm(exp, msg) assert(((void)msg, exp))
#define rep(i, a, n) for (int i = a;i < n;i ++)
#define per(i, n, a) for (int i = n - 1;i >= a;i --)
#define vt vector
#define ar array
#define pb push_back
// x in [l, r)
template <class T, class S> bool inc(const T &x, const S &l, const S &r) { return l <= x and x < r; }
namespace DEBUG {
    template <typename T>
        ostream& operator<<(ostream& os, const vector<T>& V) {
            os << "[ ";
            for (const auto& vv : V) os << vv << ", ";
            os << "]";
            return os;
        }
    template <typename T>
        inline void _debug(const char* format, T t) {
            cerr << format << '=' << t << endl;
        }
    template <class First, class... Rest>
        inline void _debug(const char* format, First first, Rest... rest) {
            while (*format != ',') cerr << *format++;
            cerr << '=' << first << ",";
            _debug(format + 1, rest...);
        }
#define debug(...) _debug(#__VA_ARGS__, __VA_ARGS__)
}
namespace IO {
    template<class A> void read(vector<A>& v);
    template<class A, size_t S> void read(array<A, S>& a);
    template<class T> void read(T& x) {cin >> x;}
    void read(double& d) {string t;read(t);d=stod(t);}
    void read(long double& d) {string t;read(t);d=stold(t);}
    template<class H, class... T> void read(H& h, T&... t) {read(h);read(t...);}
    template<class A> void read(vt<A>& x) { for (auto &a : x) read(a); }
    template<class A, size_t S> void read(array<A, S>& x) { for (auto &a : x) read(a);}
    template<class A> void write(A x) { cout << x; }
    template<class H, class... T> void write(const H& h, const T&... t) { write(h);write(t...); }
    void print() { write("\n"); }
    template<class H, class... T> void print(const H& h, const T&... t) { 
        write(h);
        if(sizeof...(t))
              write(' ');
        print(t...);
    }
    template<typename T_vector> void outv(std::vector<T_vector> &A, bool add_one = false) {
        if (std::empty(A)) return;
        int end = (int)A.size();
        for (int i = 0;i < end;i ++)
            std::cout << A[i] + (add_one ? 1 : 0) << (i < end - 1 ? ' ' : '\n');
    }

    template<typename T_vector> void outv(std::vector<std::vector<T_vector>> &A, bool space = true, bool add_one = false) {
        if (std::empty(A)) return;
        int N = A.size(), M = A[0].size();

        for (int i = 0;i < N;i ++) {
            for (int j = 0;j < M;j ++) {
                std::cout << A[i][j] + (add_one ? 1 : 0);
                if (space) std::cout << ' ';
            }
            std::cout << '\n';
        }
    }
    template <typename T_vector> void rotate(std::vector<std::vector<T_vector>> &A) {
        if(empty(A)) return;
        int N = A.size(), M = A[0].size();
        std::vector<std::vector<T_vector>> res(M, std::vector<T_vector>(N));
        for (int i = 0;i < N;i ++)
            for (int j = 0;j < M;j ++)
                res[M - 1 - j][i] = A[i][j];
        A.swap(res);
    }
}

int main() {
    gogo;
    using namespace DEBUG;
    using namespace IO;

    auto solve = [&]() -> void {
    };

    int T; cin >> T;
    while (T--)
        solve();

    return 0;
}
    ]]),
    parse_snippet('rng', [[
mt19937 rng(chrono::steady_clock::now().time_since_epoch().count());
int gen(int l, int r) {
    assert(l <= r);
    return rng() % (r - l + 1) + l;
}
    ]]),
    parse_snippet('cpc', [[
namespace cpc {
#define assertm(exp, msg) assert(((void)msg, exp))
#define rep(i, a, n) for (int i = a;i < n;i ++)
#define per(i, n, a) for (int i = n - 1;i >= a;i --)
#define vt vector
#define ar array
#define pb push_back
// x in [l, r)
template <class T, class S> bool inc(const T &x, const S &l, const S &r) { return l <= x and x < r; }
template<class A> void read(std::vector<A>& v);
template<class A, size_t S> void read(std::array<A, S>& a);
template<class T> void read(T& x) {std::cin >> x;}
void read(double& d) {std::string t;read(t);d=stod(t);}
void read(long double& d) {std::string t;read(t);d=stold(t);}
template<class H, class... T> void read(H& h, T&... t) {read(h);read(t...);}
template<class A> void read(std::vector<A>& x) { for (auto &a : x) read(a); }
template<class A, size_t S> void read(std::array<A, S>& x) { for (auto &a : x) read(a);}
template<class A> void write(A x) { std::cout << x; }
template<class H, class... T> void write(const H& h, const T&... t) { write(h);write(t...); }
void print() { write("\n"); }
template<class H, class... T> void print(const H& h, const T&... t) { 
    write(h);
    if(sizeof...(t))
          write(' ');
    print(t...);
}
template<typename T_vector> void outv(std::vector<T_vector> &A, bool add_one = false) {
    if (empty(A)) return;
    int end = (int)A.size();
    for (int i = 0;i < end;i ++)
        std::cout << A[i] + (add_one ? 1 : 0) << (i < end - 1 ? ' ' : '\n');
}
template<typename T_vector> void outv(std::vector<std::vector<T_vector>> &A, bool space = true, bool add_one = false) {
    if (empty(A)) return;
    int N = A.size(), M = A[0].size();
    for (int i = 0;i < N;i ++) {
        for (int j = 0;j < M;j ++) {
            std::cout << A[i][j] + (add_one ? 1 : 0);
            if (space) std::cout << ' ';
        }
        std::cout << '\n';
    }
}
template <typename T_vector> void rotate(std::vector<std::vector<T_vector>> &A) {
    if(empty(A)) return;
    int N = A.size(), M = A[0].size();
    std::vector<std::vector<T_vector>> res(M, std::vector<T_vector>(N));
    for (int i = 0;i < N;i ++)
        for (int j = 0;j < M;j ++)
            res[M - 1 - j][i] = A[i][j];
    A.swap(res);
}
} // namespace cpc 
    ]]),
    parse_snippet('minheap', 'template<typename T> using min_heap = priority_queue<T, vector<T>, greater<>>;'),
    parse_snippet('be', [[
        $0.begin(), $0.end()
    ]]
    ),
}

