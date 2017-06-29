# 1 "f:\\projects\\cocos\\inventory\\cocos2d\\external\\box2d\\common\\b2draw.cpp"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 337 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "f:\\projects\\cocos\\inventory\\cocos2d\\external\\box2d\\common\\b2draw.cpp" 2
# 19 "f:\\projects\\cocos\\inventory\\cocos2d\\external\\box2d\\common\\b2draw.cpp"
# 1 "../..\\Box2D/Common/b2Draw.h" 1
# 22 "../..\\Box2D/Common/b2Draw.h"
# 1 "../..\\Box2D/Common/b2Math.h" 1
# 22 "../..\\Box2D/Common/b2Math.h"
# 1 "../..\\Box2D/Common/b2Settings.h" 1
# 22 "../..\\Box2D/Common/b2Settings.h"
# 1 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\stddef.h" 1
# 11 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\stddef.h"
# 1 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt.h" 1
# 10 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt.h"
# 1 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\vcruntime.h" 1 3
# 45 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\vcruntime.h" 3
# 1 "C:\\Program Files (x86)\\Windows Kits\\8.1\\Include\\shared\\sal.h" 1 3
# 2381 "C:\\Program Files (x86)\\Windows Kits\\8.1\\Include\\shared\\sal.h" 3
extern "C" {
# 2987 "C:\\Program Files (x86)\\Windows Kits\\8.1\\Include\\shared\\sal.h" 3
}



# 1 "C:\\Program Files (x86)\\Windows Kits\\8.1\\Include\\shared\\ConcurrencySal.h" 1 3
# 22 "C:\\Program Files (x86)\\Windows Kits\\8.1\\Include\\shared\\ConcurrencySal.h" 3
extern "C" {
# 354 "C:\\Program Files (x86)\\Windows Kits\\8.1\\Include\\shared\\ConcurrencySal.h" 3
}
# 2990 "C:\\Program Files (x86)\\Windows Kits\\8.1\\Include\\shared\\sal.h" 2 3
# 45 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\vcruntime.h" 2 3

# 1 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\vadefs.h" 1 3
# 15 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\vadefs.h" 3
#pragma pack(push, 8)


extern "C" {
# 30 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\vadefs.h" 3
        typedef unsigned int uintptr_t;
# 39 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\vadefs.h" 3
        typedef char* va_list;
# 118 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\vadefs.h" 3
}



    extern "C++"
    {
        template <typename _Ty>
        struct __vcrt_va_list_is_reference
        {
            enum : bool { __the_value = false };
        };

        template <typename _Ty>
        struct __vcrt_va_list_is_reference<_Ty&>
        {
            enum : bool { __the_value = true };
        };

        template <typename _Ty>
        struct __vcrt_va_list_is_reference<_Ty&&>
        {
            enum : bool { __the_value = true };
        };

        template <typename _Ty>
        void __vcrt_va_start_verify_argument_type() throw()
        {
            static_assert(!__vcrt_va_list_is_reference<_Ty>::__the_value, "va_start argument must not have reference type and must not be parenthesized");
        }
    }
# 157 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\vadefs.h" 3
#pragma pack(pop)
# 46 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\vcruntime.h" 2 3
# 81 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\vcruntime.h" 3
#pragma pack(push, 8)
# 81 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\vcruntime.h" 3
 extern "C" {
# 198 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\vcruntime.h" 3
    typedef unsigned int size_t;
    typedef int ptrdiff_t;
    typedef int intptr_t;



    typedef bool __vcrt_bool;
# 247 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\vcruntime.h" 3
    extern "C++"
    {
        template <typename _CountofType, size_t _SizeOfArray>
        char (*__countof_helper( _CountofType (&_Array)[_SizeOfArray]))[_SizeOfArray];


    }
# 298 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\vcruntime.h" 3
    void __cdecl __security_init_cookie(void);


        void __fastcall __security_check_cookie( uintptr_t _StackCookie);
        __declspec(noreturn) void __cdecl __report_gsfailure(void);






extern uintptr_t __security_cookie;







}
# 317 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\vcruntime.h" 3
#pragma pack(pop)
# 10 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt.h" 2


#pragma pack(push, 8)
# 12 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt.h"
 extern "C" {
# 119 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt.h"
extern "C++"
{
    template<bool _Enable, typename _Ty>
    struct _CrtEnableIf;

    template<typename _Ty>
    struct _CrtEnableIf<true, _Ty>
    {
        typedef _Ty _Type;
    };
}



    typedef bool __crt_bool;
# 217 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt.h"
    __declspec(dllimport) void __cdecl _invalid_parameter(
                   wchar_t const*,
                   wchar_t const*,
                   wchar_t const*,
                   unsigned int,
                   uintptr_t
        );


__declspec(dllimport) void __cdecl _invalid_parameter_noinfo(void);
__declspec(dllimport) __declspec(noreturn) void __cdecl _invalid_parameter_noinfo_noreturn(void);

__declspec(noreturn)
__declspec(dllimport) void __cdecl _invoke_watson(
               wchar_t const*,
               wchar_t const*,
               wchar_t const*,
               unsigned int,
               uintptr_t);
# 448 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt.h"
typedef int errno_t;
typedef unsigned short wint_t;
typedef unsigned short wctype_t;
typedef long __time32_t;
typedef __int64 __time64_t;

typedef struct __crt_locale_data_public
{
      unsigned short const* _locale_pctype;
                        int _locale_mb_cur_max;
               unsigned int _locale_lc_codepage;
} __crt_locale_data_public;

typedef struct __crt_locale_pointers
{
    struct __crt_locale_data* locinfo;
    struct __crt_multibyte_data* mbcinfo;
} __crt_locale_pointers;

typedef __crt_locale_pointers* _locale_t;

typedef struct _Mbstatet
{
    unsigned long _Wchar;
    unsigned short _Byte, _State;
} _Mbstatet;

typedef _Mbstatet mbstate_t;
# 489 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt.h"
        typedef __time64_t time_t;
# 499 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt.h"
    typedef size_t rsize_t;
# 1901 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt.h"
}
# 1901 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt.h"
#pragma pack(pop)
# 11 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\stddef.h" 2


#pragma pack(push, 8)
# 13 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\stddef.h"
 extern "C" {




    namespace std
    {
        typedef decltype(__nullptr) nullptr_t;
    }

    using ::std::nullptr_t;





__declspec(dllimport) int* __cdecl _errno(void);


__declspec(dllimport) errno_t __cdecl _set_errno( int _Value);
__declspec(dllimport) errno_t __cdecl _get_errno( int* _Value);
# 46 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\stddef.h"
__declspec(dllimport) extern unsigned long __cdecl __threadid(void);

__declspec(dllimport) extern uintptr_t __cdecl __threadhandle(void);



}
# 52 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\stddef.h"
#pragma pack(pop)
# 23 "../..\\Box2D/Common/b2Settings.h" 2
# 1 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\assert.h" 1
# 14 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\assert.h"
#pragma pack(push, 8)
# 14 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\assert.h"
 extern "C" {
# 26 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\assert.h"
    __declspec(dllimport) void __cdecl _wassert(
               wchar_t const* _Message,
               wchar_t const* _File,
               unsigned _Line
        );
# 41 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\assert.h"
}
# 41 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\assert.h"
#pragma pack(pop)
# 24 "../..\\Box2D/Common/b2Settings.h" 2
# 1 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\float.h" 1
# 14 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\float.h"
#pragma pack(push, 8)
# 14 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\float.h"
 extern "C" {
# 226 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\float.h"
__declspec(dllimport) unsigned int __cdecl _clearfp(void);

#pragma warning(push)
#pragma warning(disable: 4141)

 __declspec(deprecated("This function or variable may be unsafe. Consider using " "_controlfp_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
__declspec(dllimport) unsigned int __cdecl _controlfp(
         unsigned int _NewValue,
         unsigned int _Mask
    );

#pragma warning(pop)


__declspec(dllimport) void __cdecl _set_controlfp(
         unsigned int _NewValue,
         unsigned int _Mask
    );


__declspec(dllimport) errno_t __cdecl _controlfp_s(
              unsigned int* _CurrentState,
              unsigned int _NewValue,
              unsigned int _Mask
    );


__declspec(dllimport) unsigned int __cdecl _statusfp(void);


__declspec(dllimport) void __cdecl _fpreset(void);




    __declspec(dllimport) void __cdecl _statusfp2(
                  unsigned int* _X86Status,
                  unsigned int* _SSE2Status
        );







__declspec(dllimport) unsigned int __cdecl _control87(
         unsigned int _NewValue,
         unsigned int _Mask
    );



    __declspec(dllimport) int __cdecl __control87_2(
                  unsigned int _NewValue,
                  unsigned int _Mask,
                  unsigned int* _X86ControlWord,
                  unsigned int* _Sse2ControlWord
        );




__declspec(dllimport) int* __cdecl __fpecode(void);




__declspec(dllimport) int __cdecl __fpe_flt_rounds(void);
# 307 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\float.h"
               __declspec(dllimport) double __cdecl _copysign( double _Number, double _Sign);
               __declspec(dllimport) double __cdecl _chgsign( double _X);
               __declspec(dllimport) double __cdecl _scalb( double _X, long _Y);
               __declspec(dllimport) double __cdecl _logb( double _X);
               __declspec(dllimport) double __cdecl _nextafter( double _X, double _Y);
               __declspec(dllimport) int __cdecl _finite( double _X);
               __declspec(dllimport) int __cdecl _isnan( double _X);
               __declspec(dllimport) int __cdecl _fpclass( double _X);
# 334 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\float.h"
    __declspec(dllimport) void __cdecl fpreset(void);
# 401 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\float.h"
}
# 401 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\float.h"
#pragma pack(pop)
# 25 "../..\\Box2D/Common/b2Settings.h" 2




typedef signed char int8;
typedef signed short int16;
typedef signed int int32;
typedef unsigned char uint8;
typedef unsigned short uint16;
typedef unsigned int uint32;
typedef float float32;
typedef double float64;
# 131 "../..\\Box2D/Common/b2Settings.h"
void* b2Alloc(int32 size);


void b2Free(void* mem);


void b2Log(const char* string, ...);



struct b2Version
{
 int32 major;
 int32 minor;
 int32 revision;
};


extern b2Version b2_version;
# 23 "../..\\Box2D/Common/b2Math.h" 2
# 1 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\math.h" 1
# 13 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\math.h"
#pragma pack(push, 8)
# 13 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\math.h"
 extern "C" {



#pragma warning(push)
#pragma warning(disable: 4738)
#pragma warning(disable: 4820)






 struct _exception
    {
        int type;
        char* name;
        double arg1;
        double arg2;
        double retval;
    };






        struct _complex
        {
            double x, y;
        };
# 52 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\math.h"
typedef float float_t;
typedef double double_t;
# 68 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\math.h"
        extern double const _HUGE;
# 159 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\math.h"
void __cdecl _fperrraise( int _Except);

               __declspec(dllimport) short __cdecl _dclass( double _X);
               __declspec(dllimport) short __cdecl _ldclass( long double _X);
               __declspec(dllimport) short __cdecl _fdclass( float _X);

               __declspec(dllimport) int __cdecl _dsign( double _X);
               __declspec(dllimport) int __cdecl _ldsign( long double _X);
               __declspec(dllimport) int __cdecl _fdsign( float _X);

               __declspec(dllimport) int __cdecl _dpcomp( double _X, double _Y);
               __declspec(dllimport) int __cdecl _ldpcomp( long double _X, long double _Y);
               __declspec(dllimport) int __cdecl _fdpcomp( float _X, float _Y);

               __declspec(dllimport) short __cdecl _dtest( double* _Px);
               __declspec(dllimport) short __cdecl _ldtest( long double* _Px);
               __declspec(dllimport) short __cdecl _fdtest( float* _Px);

__declspec(dllimport) short __cdecl _d_int( double* _Px, short _Xexp);
__declspec(dllimport) short __cdecl _ld_int( long double* _Px, short _Xexp);
__declspec(dllimport) short __cdecl _fd_int( float* _Px, short _Xexp);

__declspec(dllimport) short __cdecl _dscale( double* _Px, long _Lexp);
__declspec(dllimport) short __cdecl _ldscale( long double* _Px, long _Lexp);
__declspec(dllimport) short __cdecl _fdscale( float* _Px, long _Lexp);

__declspec(dllimport) short __cdecl _dunscale( short* _Pex, double* _Px);
__declspec(dllimport) short __cdecl _ldunscale( short* _Pex, long double* _Px);
__declspec(dllimport) short __cdecl _fdunscale( short* _Pex, float* _Px);

               __declspec(dllimport) short __cdecl _dexp( double* _Px, double _Y, long _Eoff);
               __declspec(dllimport) short __cdecl _ldexp( long double* _Px, long double _Y, long _Eoff);
               __declspec(dllimport) short __cdecl _fdexp( float* _Px, float _Y, long _Eoff);

               __declspec(dllimport) short __cdecl _dnorm( unsigned short* _Ps);
               __declspec(dllimport) short __cdecl _fdnorm( unsigned short* _Ps);

               __declspec(dllimport) double __cdecl _dpoly( double _X, double const* _Tab, int _N);
               __declspec(dllimport) long double __cdecl _ldpoly( long double _X, long double const* _Tab, int _N);
               __declspec(dllimport) float __cdecl _fdpoly( float _X, float const* _Tab, int _N);

               __declspec(dllimport) double __cdecl _dlog( double _X, int _Baseflag);
               __declspec(dllimport) long double __cdecl _ldlog( long double _X, int _Baseflag);
               __declspec(dllimport) float __cdecl _fdlog( float _X, int _Baseflag);

               __declspec(dllimport) double __cdecl _dsin( double _X, unsigned int _Qoff);
               __declspec(dllimport) long double __cdecl _ldsin( long double _X, unsigned int _Qoff);
               __declspec(dllimport) float __cdecl _fdsin( float _X, unsigned int _Qoff);


typedef union
{
    unsigned short _Sh[4];
    double _Val;
} _double_val;


typedef union
{
    unsigned short _Sh[2];
    float _Val;
} _float_val;


typedef union
{
    unsigned short _Sh[4];
    long double _Val;
} _ldouble_val;

typedef union
{
    unsigned short _Word[4];
    float _Float;
    double _Double;
    long double _Long_double;
} _float_const;

extern const _float_const _Denorm_C, _Inf_C, _Nan_C, _Snan_C, _Hugeval_C;
extern const _float_const _FDenorm_C, _FInf_C, _FNan_C, _FSnan_C;
extern const _float_const _LDenorm_C, _LInf_C, _LNan_C, _LSnan_C;

extern const _float_const _Eps_C, _Rteps_C;
extern const _float_const _FEps_C, _FRteps_C;
extern const _float_const _LEps_C, _LRteps_C;

extern const double _Zero_C, _Xbig_C;
extern const float _FZero_C, _FXbig_C;
extern const long double _LZero_C, _LXbig_C;
# 276 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\math.h"
extern "C++"
{
                   inline int fpclassify( float _X) throw()
    {
        return _fdtest(&_X);
    }

                   inline int fpclassify( double _X) throw()
    {
        return _dtest(&_X);
    }

                   inline int fpclassify( long double _X) throw()
    {
        return _ldtest(&_X);
    }

                   inline bool signbit( float _X) throw()
    {
        return _fdsign(_X) != 0;
    }

                   inline bool signbit( double _X) throw()
    {
        return _dsign(_X) != 0;
    }

                   inline bool signbit( long double _X) throw()
    {
        return _ldsign(_X) != 0;
    }

                   inline int _fpcomp( float _X, float _Y) throw()
    {
        return _fdpcomp(_X, _Y);
    }

                   inline int _fpcomp( double _X, double _Y) throw()
    {
        return _dpcomp(_X, _Y);
    }

                   inline int _fpcomp( long double _X, long double _Y) throw()
    {
        return _ldpcomp(_X, _Y);
    }

    template <class _Trc, class _Tre> struct _Combined_type
    {
        typedef float _Type;
    };

    template <> struct _Combined_type<float, double>
    {
        typedef double _Type;
    };

    template <> struct _Combined_type<float, long double>
    {
        typedef long double _Type;
    };

    template <class _Ty, class _T2> struct _Real_widened
    {
        typedef long double _Type;
    };

    template <> struct _Real_widened<float, float>
    {
        typedef float _Type;
    };

    template <> struct _Real_widened<float, double>
    {
        typedef double _Type;
    };

    template <> struct _Real_widened<double, float>
    {
        typedef double _Type;
    };

    template <> struct _Real_widened<double, double>
    {
        typedef double _Type;
    };

    template <class _Ty> struct _Real_type
    {
        typedef double _Type;
    };

    template <> struct _Real_type<float>
    {
        typedef float _Type;
    };

    template <> struct _Real_type<long double>
    {
        typedef long double _Type;
    };

    template <class _T1, class _T2>
                   inline int _fpcomp( _T1 _X, _T2 _Y) throw()
    {
        typedef typename _Combined_type<float,
            typename _Real_widened<
            typename _Real_type<_T1>::_Type,
            typename _Real_type<_T2>::_Type>::_Type>::_Type _Tw;
        return _fpcomp((_Tw)_X, (_Tw)_Y);
    }

    template <class _Ty>
                   inline bool isfinite( _Ty _X) throw()
    {
        return fpclassify(_X) <= 0;
    }

    template <class _Ty>
                   inline bool isinf( _Ty _X) throw()
    {
        return fpclassify(_X) == 1;
    }

    template <class _Ty>
                   inline bool isnan( _Ty _X) throw()
    {
        return fpclassify(_X) == 2;
    }

    template <class _Ty>
                   inline bool isnormal( _Ty _X) throw()
    {
        return fpclassify(_X) == (-1);
    }

    template <class _Ty1, class _Ty2>
                   inline bool isgreater( _Ty1 _X, _Ty2 _Y) throw()
    {
        return (_fpcomp(_X, _Y) & 4) != 0;
    }

    template <class _Ty1, class _Ty2>
                   inline bool isgreaterequal( _Ty1 _X, _Ty2 _Y) throw()
    {
        return (_fpcomp(_X, _Y) & (2 | 4)) != 0;
    }

    template <class _Ty1, class _Ty2>
                   inline bool isless( _Ty1 _X, _Ty2 _Y) throw()
    {
        return (_fpcomp(_X, _Y) & 1) != 0;
    }

    template <class _Ty1, class _Ty2>
                   inline bool islessequal( _Ty1 _X, _Ty2 _Y) throw()
    {
        return (_fpcomp(_X, _Y) & (1 | 2)) != 0;
    }

    template <class _Ty1, class _Ty2>
                   inline bool islessgreater( _Ty1 _X, _Ty2 _Y) throw()
    {
        return (_fpcomp(_X, _Y) & (1 | 4)) != 0;
    }

    template <class _Ty1, class _Ty2>
                   inline bool isunordered( _Ty1 _X, _Ty2 _Y) throw()
    {
        return _fpcomp(_X, _Y) == 0;
    }
}






               int __cdecl abs( int _X);
               long __cdecl labs( long _X);
               long long __cdecl llabs( long long _X);

               double __cdecl acos( double _X);
               double __cdecl asin( double _X);
               double __cdecl atan( double _X);
               double __cdecl atan2( double _Y, double _X);

               double __cdecl cos( double _X);
               double __cdecl cosh( double _X);
               double __cdecl exp( double _X);
                                  double __cdecl fabs( double _X);
               double __cdecl fmod( double _X, double _Y);
               double __cdecl log( double _X);
               double __cdecl log10( double _X);
               double __cdecl pow( double _X, double _Y);
               double __cdecl sin( double _X);
               double __cdecl sinh( double _X);
                                  double __cdecl sqrt( double _X);
               double __cdecl tan( double _X);
               double __cdecl tanh( double _X);

               __declspec(dllimport) double __cdecl acosh( double _X);
               __declspec(dllimport) double __cdecl asinh( double _X);
               __declspec(dllimport) double __cdecl atanh( double _X);
               __declspec(dllimport) double __cdecl atof( char const* _String);
               __declspec(dllimport) double __cdecl _atof_l( char const* _String, _locale_t _Locale);
               __declspec(dllimport) double __cdecl _cabs( struct _complex _Complex_value);
               __declspec(dllimport) double __cdecl cbrt( double _X);
               __declspec(dllimport) double __cdecl ceil( double _X);
               __declspec(dllimport) double __cdecl _chgsign( double _X);
               __declspec(dllimport) double __cdecl copysign( double _Number, double _Sign);
               __declspec(dllimport) double __cdecl _copysign( double _Number, double _Sign);
               __declspec(dllimport) double __cdecl erf( double _X);
               __declspec(dllimport) double __cdecl erfc( double _X);
               __declspec(dllimport) double __cdecl exp2( double _X);
               __declspec(dllimport) double __cdecl expm1( double _X);
               __declspec(dllimport) double __cdecl fdim( double _X, double _Y);
               __declspec(dllimport) double __cdecl floor( double _X);
               __declspec(dllimport) double __cdecl fma( double _X, double _Y, double _Z);
               __declspec(dllimport) double __cdecl fmax( double _X, double _Y);
               __declspec(dllimport) double __cdecl fmin( double _X, double _Y);
               __declspec(dllimport) double __cdecl frexp( double _X, int* _Y);
               __declspec(dllimport) double __cdecl hypot( double _X, double _Y);
               __declspec(dllimport) double __cdecl _hypot( double _X, double _Y);
               __declspec(dllimport) int __cdecl ilogb( double _X);
               __declspec(dllimport) double __cdecl ldexp( double _X, int _Y);
               __declspec(dllimport) double __cdecl lgamma( double _X);
               __declspec(dllimport) long long __cdecl llrint( double _X);
               __declspec(dllimport) long long __cdecl llround( double _X);
               __declspec(dllimport) double __cdecl log1p( double _X);
               __declspec(dllimport) double __cdecl log2( double _X);
               __declspec(dllimport) double __cdecl logb( double _X);
               __declspec(dllimport) long __cdecl lrint( double _X);
               __declspec(dllimport) long __cdecl lround( double _X);

int __cdecl _matherr( struct _exception* _Except);

               __declspec(dllimport) double __cdecl modf( double _X, double* _Y);
               __declspec(dllimport) double __cdecl nan( char const*);
               __declspec(dllimport) double __cdecl nearbyint( double _X);
               __declspec(dllimport) double __cdecl nextafter( double _X, double _Y);
               __declspec(dllimport) double __cdecl nexttoward( double _X, long double _Y);
               __declspec(dllimport) double __cdecl remainder( double _X, double _Y);
               __declspec(dllimport) double __cdecl remquo( double _X, double _Y, int* _Z);
               __declspec(dllimport) double __cdecl rint( double _X);
               __declspec(dllimport) double __cdecl round( double _X);
               __declspec(dllimport) double __cdecl scalbln( double _X, long _Y);
               __declspec(dllimport) double __cdecl scalbn( double _X, int _Y);
               __declspec(dllimport) double __cdecl tgamma( double _X);
               __declspec(dllimport) double __cdecl trunc( double _X);
               __declspec(dllimport) double __cdecl _j0( double _X );
               __declspec(dllimport) double __cdecl _j1( double _X );
               __declspec(dllimport) double __cdecl _jn(int _X, double _Y);
               __declspec(dllimport) double __cdecl _y0( double _X);
               __declspec(dllimport) double __cdecl _y1( double _X);
               __declspec(dllimport) double __cdecl _yn( int _X, double _Y);

               __declspec(dllimport) float __cdecl acoshf( float _X);
               __declspec(dllimport) float __cdecl asinhf( float _X);
               __declspec(dllimport) float __cdecl atanhf( float _X);
               __declspec(dllimport) float __cdecl cbrtf( float _X);
               __declspec(dllimport) float __cdecl _chgsignf( float _X);
               __declspec(dllimport) float __cdecl copysignf( float _Number, float _Sign);
               __declspec(dllimport) float __cdecl _copysignf( float _Number, float _Sign);
               __declspec(dllimport) float __cdecl erff( float _X);
               __declspec(dllimport) float __cdecl erfcf( float _X);
               __declspec(dllimport) float __cdecl expm1f( float _X);
               __declspec(dllimport) float __cdecl exp2f( float _X);
               __declspec(dllimport) float __cdecl fdimf( float _X, float _Y);
               __declspec(dllimport) float __cdecl fmaf( float _X, float _Y, float _Z);
               __declspec(dllimport) float __cdecl fmaxf( float _X, float _Y);
               __declspec(dllimport) float __cdecl fminf( float _X, float _Y);
               __declspec(dllimport) float __cdecl _hypotf( float _X, float _Y);
               __declspec(dllimport) int __cdecl ilogbf( float _X);
               __declspec(dllimport) float __cdecl lgammaf( float _X);
               __declspec(dllimport) long long __cdecl llrintf( float _X);
               __declspec(dllimport) long long __cdecl llroundf( float _X);
               __declspec(dllimport) float __cdecl log1pf( float _X);
               __declspec(dllimport) float __cdecl log2f( float _X);
               __declspec(dllimport) float __cdecl logbf( float _X);
               __declspec(dllimport) long __cdecl lrintf( float _X);
               __declspec(dllimport) long __cdecl lroundf( float _X);
               __declspec(dllimport) float __cdecl nanf( char const*);
               __declspec(dllimport) float __cdecl nearbyintf( float _X);
               __declspec(dllimport) float __cdecl nextafterf( float _X, float _Y);
               __declspec(dllimport) float __cdecl nexttowardf( float _X, long double _Y);
               __declspec(dllimport) float __cdecl remainderf( float _X, float _Y);
               __declspec(dllimport) float __cdecl remquof( float _X, float _Y, int* _Z);
               __declspec(dllimport) float __cdecl rintf( float _X);
               __declspec(dllimport) float __cdecl roundf( float _X);
               __declspec(dllimport) float __cdecl scalblnf( float _X, long _Y);
               __declspec(dllimport) float __cdecl scalbnf( float _X, int _Y);
               __declspec(dllimport) float __cdecl tgammaf( float _X);
               __declspec(dllimport) float __cdecl truncf( float _X);



                   __declspec(dllimport) int __cdecl _set_SSE2_enable( int _Flag);
# 608 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\math.h"
                   __inline float __cdecl acosf( float _X)
    {
        return (float)acos(_X);
    }

                   __inline float __cdecl asinf( float _X)
    {
        return (float)asin(_X);
    }

                   __inline float __cdecl atan2f( float _Y, float _X)
    {
        return (float)atan2(_Y, _X);
    }

                   __inline float __cdecl atanf( float _X)
    {
        return (float)atan(_X);
    }

                   __inline float __cdecl ceilf( float _X)
    {
        return (float)ceil(_X);
    }

                   __inline float __cdecl cosf( float _X)
    {
        return (float)cos(_X);
    }

                   __inline float __cdecl coshf( float _X)
    {
        return (float)cosh(_X);
    }

                   __inline float __cdecl expf( float _X)
    {
        return (float)exp(_X);
    }
# 656 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\math.h"
                   __inline float __cdecl fabsf( float _X)
    {
        return (float)fabs(_X);
    }
# 670 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\math.h"
                   __inline float __cdecl floorf( float _X)
    {
        return (float)floor(_X);
    }

                   __inline float __cdecl fmodf( float _X, float _Y)
    {
        return (float)fmod(_X, _Y);
    }



               __inline float __cdecl frexpf( float _X, int *_Y)
{
    return (float)frexp(_X, _Y);
}

               __inline float __cdecl hypotf( float _X, float _Y)
{
    return _hypotf(_X, _Y);
}

               __inline float __cdecl ldexpf( float _X, int _Y)
{
    return (float)ldexp(_X, _Y);
}
# 711 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\math.h"
                   __inline float __cdecl log10f( float _X)
    {
        return (float)log10(_X);
    }

                   __inline float __cdecl logf( float _X)
    {
        return (float)log(_X);
    }

                   __inline float __cdecl modff( float _X, float* _Y)
    {
        double _F, _I;
        _F = modf(_X, &_I);
        *_Y = (float)_I;
        return (float)_F;
    }

                   __inline float __cdecl powf( float _X, float _Y)
    {
        return (float)pow(_X, _Y);
    }

                   __inline float __cdecl sinf( float _X)
    {
        return (float)sin(_X);
    }

                   __inline float __cdecl sinhf( float _X)
    {
        return (float)sinh(_X);
    }

                   __inline float __cdecl sqrtf( float _X)
    {
        return (float)sqrt(_X);
    }

                   __inline float __cdecl tanf( float _X)
    {
        return (float)tan(_X);
    }

                   __inline float __cdecl tanhf( float _X)
    {
        return (float)tanh(_X);
    }



               __declspec(dllimport) long double __cdecl acoshl( long double _X);

               __inline long double __cdecl acosl( long double _X)
{
    return acos((double)_X);
}

               __declspec(dllimport) long double __cdecl asinhl( long double _X);

               __inline long double __cdecl asinl( long double _X)
{
    return asin((double)_X);
}

               __inline long double __cdecl atan2l( long double _Y, long double _X)
{
    return atan2((double)_Y, (double)_X);
}

               __declspec(dllimport) long double __cdecl atanhl( long double _X);

               __inline long double __cdecl atanl( long double _X)
{
    return atan((double)_X);
}

               __declspec(dllimport) long double __cdecl cbrtl( long double _X);

               __inline long double __cdecl ceill( long double _X)
{
    return ceil((double)_X);
}

               __inline long double __cdecl _chgsignl( long double _X)
{
    return _chgsign((double)_X);
}

               __declspec(dllimport) long double __cdecl copysignl( long double _Number, long double _Sign);

               __inline long double __cdecl _copysignl( long double _Number, long double _Sign)
{
    return _copysign((double)_Number, (double)_Sign);
}

               __inline long double __cdecl coshl( long double _X)
{
    return cosh((double)_X);
}

               __inline long double __cdecl cosl( long double _X)
{
    return cos((double)_X);
}

               __declspec(dllimport) long double __cdecl erfl( long double _X);
               __declspec(dllimport) long double __cdecl erfcl( long double _X);

               __inline long double __cdecl expl( long double _X)
{
    return exp((double)_X);
}

               __declspec(dllimport) long double __cdecl exp2l( long double _X);
               __declspec(dllimport) long double __cdecl expm1l( long double _X);

               __inline long double __cdecl fabsl( long double _X)
{
    return fabs((double)_X);
}

               __declspec(dllimport) long double __cdecl fdiml( long double _X, long double _Y);

               __inline long double __cdecl floorl( long double _X)
{
    return floor((double)_X);
}

               __declspec(dllimport) long double __cdecl fmal( long double _X, long double _Y, long double _Z);
               __declspec(dllimport) long double __cdecl fmaxl( long double _X, long double _Y);
               __declspec(dllimport) long double __cdecl fminl( long double _X, long double _Y);

               __inline long double __cdecl fmodl( long double _X, long double _Y)
{
    return fmod((double)_X, (double)_Y);
}

               __inline long double __cdecl frexpl( long double _X, int *_Y)
{
    return frexp((double)_X, _Y);
}

               __declspec(dllimport) int __cdecl ilogbl( long double _X);

               __inline long double __cdecl _hypotl( long double _X, long double _Y)
{
    return _hypot((double)_X, (double)_Y);
}

               __inline long double __cdecl hypotl( long double _X, long double _Y)
{
    return _hypot((double)_X, (double)_Y);
}

               __inline long double __cdecl ldexpl( long double _X, int _Y)
{
    return ldexp((double)_X, _Y);
}

               __declspec(dllimport) long double __cdecl lgammal( long double _X);
               __declspec(dllimport) long long __cdecl llrintl( long double _X);
               __declspec(dllimport) long long __cdecl llroundl( long double _X);

               __inline long double __cdecl logl( long double _X)
{
    return log((double)_X);
}

               __inline long double __cdecl log10l( long double _X)
{
    return log10((double)_X);
}

               __declspec(dllimport) long double __cdecl log1pl( long double _X);
               __declspec(dllimport) long double __cdecl log2l( long double _X);
               __declspec(dllimport) long double __cdecl logbl( long double _X);
               __declspec(dllimport) long __cdecl lrintl( long double _X);
               __declspec(dllimport) long __cdecl lroundl( long double _X);

               __inline long double __cdecl modfl( long double _X, long double* _Y)
{
    double _F, _I;
    _F = modf((double)_X, &_I);
    *_Y = _I;
    return _F;
}

               __declspec(dllimport) long double __cdecl nanl( char const*);
               __declspec(dllimport) long double __cdecl nearbyintl( long double _X);
               __declspec(dllimport) long double __cdecl nextafterl( long double _X, long double _Y);
               __declspec(dllimport) long double __cdecl nexttowardl( long double _X, long double _Y);

               __inline long double __cdecl powl( long double _X, long double _Y)
{
    return pow((double)_X, (double)_Y);
}

               __declspec(dllimport) long double __cdecl remainderl( long double _X, long double _Y);
               __declspec(dllimport) long double __cdecl remquol( long double _X, long double _Y, int* _Z);
               __declspec(dllimport) long double __cdecl rintl( long double _X);
               __declspec(dllimport) long double __cdecl roundl( long double _X);
               __declspec(dllimport) long double __cdecl scalblnl( long double _X, long _Y);
               __declspec(dllimport) long double __cdecl scalbnl( long double _X, int _Y);

               __inline long double __cdecl sinhl( long double _X)
{
    return sinh((double)_X);
}

               __inline long double __cdecl sinl( long double _X)
{
    return sin((double)_X);
}

               __inline long double __cdecl sqrtl( long double _X)
{
    return sqrt((double)_X);
}

               __inline long double __cdecl tanhl( long double _X)
{
    return tanh((double)_X);
}

               __inline long double __cdecl tanl( long double _X)
{
    return tan((double)_X);
}

               __declspec(dllimport) long double __cdecl tgammal( long double _X);
               __declspec(dllimport) long double __cdecl truncl( long double _X);
# 963 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\math.h"
            extern double HUGE;




        __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_j0" ". See online help for details.")) __declspec(dllimport) double __cdecl j0( double _X);
        __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_j1" ". See online help for details.")) __declspec(dllimport) double __cdecl j1( double _X);
        __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_jn" ". See online help for details.")) __declspec(dllimport) double __cdecl jn( int _X, double _Y);
        __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_y0" ". See online help for details.")) __declspec(dllimport) double __cdecl y0( double _X);
        __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_y1" ". See online help for details.")) __declspec(dllimport) double __cdecl y1( double _X);
        __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_yn" ". See online help for details.")) __declspec(dllimport) double __cdecl yn( int _X, double _Y);





#pragma warning(pop)



}
# 983 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\math.h"
#pragma pack(pop)
# 24 "../..\\Box2D/Common/b2Math.h" 2


inline bool b2IsValid(float32 x)
{
 int32 ix = *reinterpret_cast<int32*>(&x);
 return (ix & 0x7f800000) != 0x7f800000;
}


inline float32 b2InvSqrt(float32 x)
{
 union
 {
  float32 x;
  int32 i;
 } convert;

 convert.x = x;
 float32 xhalf = 0.5f * x;
 convert.i = 0x5f3759df - (convert.i >> 1);
 x = convert.x;
 x = x * (1.5f - xhalf * x * x);
 return x;
}





struct b2Vec2
{

 b2Vec2() {}


 b2Vec2(float32 x, float32 y) : x(x), y(y) {}


 void SetZero() { x = 0.0f; y = 0.0f; }


 void Set(float32 x_, float32 y_) { x = x_; y = y_; }


 b2Vec2 operator -() const { b2Vec2 v; v.Set(-x, -y); return v; }


 float32 operator () (int32 i) const
 {
  return (&x)[i];
 }


 float32& operator () (int32 i)
 {
  return (&x)[i];
 }


 void operator += (const b2Vec2& v)
 {
  x += v.x; y += v.y;
 }


 void operator -= (const b2Vec2& v)
 {
  x -= v.x; y -= v.y;
 }


 void operator *= (float32 a)
 {
  x *= a; y *= a;
 }


 float32 Length() const
 {
  return sqrtf(x * x + y * y);
 }



 float32 LengthSquared() const
 {
  return x * x + y * y;
 }


 float32 Normalize()
 {
  float32 length = Length();
  if (length < 1.192092896e-07F)
  {
   return 0.0f;
  }
  float32 invLength = 1.0f / length;
  x *= invLength;
  y *= invLength;

  return length;
 }


 bool IsValid() const
 {
  return b2IsValid(x) && b2IsValid(y);
 }


 b2Vec2 Skew() const
 {
  return b2Vec2(-y, x);
 }

 float32 x, y;
};


struct b2Vec3
{

 b2Vec3() {}


 b2Vec3(float32 x, float32 y, float32 z) : x(x), y(y), z(z) {}


 void SetZero() { x = 0.0f; y = 0.0f; z = 0.0f; }


 void Set(float32 x_, float32 y_, float32 z_) { x = x_; y = y_; z = z_; }


 b2Vec3 operator -() const { b2Vec3 v; v.Set(-x, -y, -z); return v; }


 void operator += (const b2Vec3& v)
 {
  x += v.x; y += v.y; z += v.z;
 }


 void operator -= (const b2Vec3& v)
 {
  x -= v.x; y -= v.y; z -= v.z;
 }


 void operator *= (float32 s)
 {
  x *= s; y *= s; z *= s;
 }

 float32 x, y, z;
};


struct b2Mat22
{

 b2Mat22() {}


 b2Mat22(const b2Vec2& c1, const b2Vec2& c2)
 {
  ex = c1;
  ey = c2;
 }


 b2Mat22(float32 a11, float32 a12, float32 a21, float32 a22)
 {
  ex.x = a11; ex.y = a21;
  ey.x = a12; ey.y = a22;
 }


 void Set(const b2Vec2& c1, const b2Vec2& c2)
 {
  ex = c1;
  ey = c2;
 }


 void SetIdentity()
 {
  ex.x = 1.0f; ey.x = 0.0f;
  ex.y = 0.0f; ey.y = 1.0f;
 }


 void SetZero()
 {
  ex.x = 0.0f; ey.x = 0.0f;
  ex.y = 0.0f; ey.y = 0.0f;
 }

 b2Mat22 GetInverse() const
 {
  float32 a = ex.x, b = ey.x, c = ex.y, d = ey.y;
  b2Mat22 B;
  float32 det = a * d - b * c;
  if (det != 0.0f)
  {
   det = 1.0f / det;
  }
  B.ex.x = det * d; B.ey.x = -det * b;
  B.ex.y = -det * c; B.ey.y = det * a;
  return B;
 }



 b2Vec2 Solve(const b2Vec2& b) const
 {
  float32 a11 = ex.x, a12 = ey.x, a21 = ex.y, a22 = ey.y;
  float32 det = a11 * a22 - a12 * a21;
  if (det != 0.0f)
  {
   det = 1.0f / det;
  }
  b2Vec2 x;
  x.x = det * (a22 * b.x - a12 * b.y);
  x.y = det * (a11 * b.y - a21 * b.x);
  return x;
 }

 b2Vec2 ex, ey;
};


struct b2Mat33
{

 b2Mat33() {}


 b2Mat33(const b2Vec3& c1, const b2Vec3& c2, const b2Vec3& c3)
 {
  ex = c1;
  ey = c2;
  ez = c3;
 }


 void SetZero()
 {
  ex.SetZero();
  ey.SetZero();
  ez.SetZero();
 }



 b2Vec3 Solve33(const b2Vec3& b) const;




 b2Vec2 Solve22(const b2Vec2& b) const;



 void GetInverse22(b2Mat33* M) const;



 void GetSymInverse33(b2Mat33* M) const;

 b2Vec3 ex, ey, ez;
};


struct b2Rot
{
 b2Rot() {}


 explicit b2Rot(float32 angle)
 {

  s = sinf(angle);
  c = cosf(angle);
 }


 void Set(float32 angle)
 {

  s = sinf(angle);
  c = cosf(angle);
 }


 void SetIdentity()
 {
  s = 0.0f;
  c = 1.0f;
 }


 float32 GetAngle() const
 {
  return atan2f(s, c);
 }


 b2Vec2 GetXAxis() const
 {
  return b2Vec2(c, s);
 }


 b2Vec2 GetYAxis() const
 {
  return b2Vec2(-s, c);
 }


 float32 s, c;
};



struct b2Transform
{

 b2Transform() {}


 b2Transform(const b2Vec2& position, const b2Rot& rotation) : p(position), q(rotation) {}


 void SetIdentity()
 {
  p.SetZero();
  q.SetIdentity();
 }


 void Set(const b2Vec2& position, float32 angle)
 {
  p = position;
  q.Set(angle);
 }

 b2Vec2 p;
 b2Rot q;
};





struct b2Sweep
{


 void GetTransform(b2Transform* xfb, float32 beta) const;



 void Advance(float32 alpha);


 void Normalize();

 b2Vec2 localCenter;
 b2Vec2 c0, c;
 float32 a0, a;



 float32 alpha0;
};


extern const b2Vec2 b2Vec2_zero;


inline float32 b2Dot(const b2Vec2& a, const b2Vec2& b)
{
 return a.x * b.x + a.y * b.y;
}


inline float32 b2Cross(const b2Vec2& a, const b2Vec2& b)
{
 return a.x * b.y - a.y * b.x;
}



inline b2Vec2 b2Cross(const b2Vec2& a, float32 s)
{
 return b2Vec2(s * a.y, -s * a.x);
}



inline b2Vec2 b2Cross(float32 s, const b2Vec2& a)
{
 return b2Vec2(-s * a.y, s * a.x);
}



inline b2Vec2 b2Mul(const b2Mat22& A, const b2Vec2& v)
{
 return b2Vec2(A.ex.x * v.x + A.ey.x * v.y, A.ex.y * v.x + A.ey.y * v.y);
}



inline b2Vec2 b2MulT(const b2Mat22& A, const b2Vec2& v)
{
 return b2Vec2(b2Dot(v, A.ex), b2Dot(v, A.ey));
}


inline b2Vec2 operator + (const b2Vec2& a, const b2Vec2& b)
{
 return b2Vec2(a.x + b.x, a.y + b.y);
}


inline b2Vec2 operator - (const b2Vec2& a, const b2Vec2& b)
{
 return b2Vec2(a.x - b.x, a.y - b.y);
}

inline b2Vec2 operator * (float32 s, const b2Vec2& a)
{
 return b2Vec2(s * a.x, s * a.y);
}

inline bool operator == (const b2Vec2& a, const b2Vec2& b)
{
 return a.x == b.x && a.y == b.y;
}

inline float32 b2Distance(const b2Vec2& a, const b2Vec2& b)
{
 b2Vec2 c = a - b;
 return c.Length();
}

inline float32 b2DistanceSquared(const b2Vec2& a, const b2Vec2& b)
{
 b2Vec2 c = a - b;
 return b2Dot(c, c);
}

inline b2Vec3 operator * (float32 s, const b2Vec3& a)
{
 return b2Vec3(s * a.x, s * a.y, s * a.z);
}


inline b2Vec3 operator + (const b2Vec3& a, const b2Vec3& b)
{
 return b2Vec3(a.x + b.x, a.y + b.y, a.z + b.z);
}


inline b2Vec3 operator - (const b2Vec3& a, const b2Vec3& b)
{
 return b2Vec3(a.x - b.x, a.y - b.y, a.z - b.z);
}


inline float32 b2Dot(const b2Vec3& a, const b2Vec3& b)
{
 return a.x * b.x + a.y * b.y + a.z * b.z;
}


inline b2Vec3 b2Cross(const b2Vec3& a, const b2Vec3& b)
{
 return b2Vec3(a.y * b.z - a.z * b.y, a.z * b.x - a.x * b.z, a.x * b.y - a.y * b.x);
}

inline b2Mat22 operator + (const b2Mat22& A, const b2Mat22& B)
{
 return b2Mat22(A.ex + B.ex, A.ey + B.ey);
}


inline b2Mat22 b2Mul(const b2Mat22& A, const b2Mat22& B)
{
 return b2Mat22(b2Mul(A, B.ex), b2Mul(A, B.ey));
}


inline b2Mat22 b2MulT(const b2Mat22& A, const b2Mat22& B)
{
 b2Vec2 c1(b2Dot(A.ex, B.ex), b2Dot(A.ey, B.ex));
 b2Vec2 c2(b2Dot(A.ex, B.ey), b2Dot(A.ey, B.ey));
 return b2Mat22(c1, c2);
}


inline b2Vec3 b2Mul(const b2Mat33& A, const b2Vec3& v)
{
 return v.x * A.ex + v.y * A.ey + v.z * A.ez;
}


inline b2Vec2 b2Mul22(const b2Mat33& A, const b2Vec2& v)
{
 return b2Vec2(A.ex.x * v.x + A.ey.x * v.y, A.ex.y * v.x + A.ey.y * v.y);
}


inline b2Rot b2Mul(const b2Rot& q, const b2Rot& r)
{




 b2Rot qr;
 qr.s = q.s * r.c + q.c * r.s;
 qr.c = q.c * r.c - q.s * r.s;
 return qr;
}


inline b2Rot b2MulT(const b2Rot& q, const b2Rot& r)
{




 b2Rot qr;
 qr.s = q.c * r.s - q.s * r.c;
 qr.c = q.c * r.c + q.s * r.s;
 return qr;
}


inline b2Vec2 b2Mul(const b2Rot& q, const b2Vec2& v)
{
 return b2Vec2(q.c * v.x - q.s * v.y, q.s * v.x + q.c * v.y);
}


inline b2Vec2 b2MulT(const b2Rot& q, const b2Vec2& v)
{
 return b2Vec2(q.c * v.x + q.s * v.y, -q.s * v.x + q.c * v.y);
}

inline b2Vec2 b2Mul(const b2Transform& T, const b2Vec2& v)
{
 float32 x = (T.q.c * v.x - T.q.s * v.y) + T.p.x;
 float32 y = (T.q.s * v.x + T.q.c * v.y) + T.p.y;

 return b2Vec2(x, y);
}

inline b2Vec2 b2MulT(const b2Transform& T, const b2Vec2& v)
{
 float32 px = v.x - T.p.x;
 float32 py = v.y - T.p.y;
 float32 x = (T.q.c * px + T.q.s * py);
 float32 y = (-T.q.s * px + T.q.c * py);

 return b2Vec2(x, y);
}



inline b2Transform b2Mul(const b2Transform& A, const b2Transform& B)
{
 b2Transform C;
 C.q = b2Mul(A.q, B.q);
 C.p = b2Mul(A.q, B.p) + A.p;
 return C;
}



inline b2Transform b2MulT(const b2Transform& A, const b2Transform& B)
{
 b2Transform C;
 C.q = b2MulT(A.q, B.q);
 C.p = b2MulT(A.q, B.p - A.p);
 return C;
}

template <typename T>
inline T b2Abs(T a)
{
 return a > T(0) ? a : -a;
}

inline b2Vec2 b2Abs(const b2Vec2& a)
{
 return b2Vec2(b2Abs(a.x), b2Abs(a.y));
}

inline b2Mat22 b2Abs(const b2Mat22& A)
{
 return b2Mat22(b2Abs(A.ex), b2Abs(A.ey));
}

template <typename T>
inline T b2Min(T a, T b)
{
 return a < b ? a : b;
}

inline b2Vec2 b2Min(const b2Vec2& a, const b2Vec2& b)
{
 return b2Vec2(b2Min(a.x, b.x), b2Min(a.y, b.y));
}

template <typename T>
inline T b2Max(T a, T b)
{
 return a > b ? a : b;
}

inline b2Vec2 b2Max(const b2Vec2& a, const b2Vec2& b)
{
 return b2Vec2(b2Max(a.x, b.x), b2Max(a.y, b.y));
}

template <typename T>
inline T b2Clamp(T a, T low, T high)
{
 return b2Max(low, b2Min(a, high));
}

inline b2Vec2 b2Clamp(const b2Vec2& a, const b2Vec2& low, const b2Vec2& high)
{
 return b2Max(low, b2Min(a, high));
}

template<typename T> inline void b2Swap(T& a, T& b)
{
 T tmp = a;
 a = b;
 b = tmp;
}






inline uint32 b2NextPowerOfTwo(uint32 x)
{
 x |= (x >> 1);
 x |= (x >> 2);
 x |= (x >> 4);
 x |= (x >> 8);
 x |= (x >> 16);
 return x + 1;
}

inline bool b2IsPowerOfTwo(uint32 x)
{
 bool result = x > 0 && (x & (x - 1)) == 0;
 return result;
}

inline void b2Sweep::GetTransform(b2Transform* xf, float32 beta) const
{
 xf->p = (1.0f - beta) * c0 + beta * c;
 float32 angle = (1.0f - beta) * a0 + beta * a;
 xf->q.Set(angle);


 xf->p -= b2Mul(xf->q, localCenter);
}

inline void b2Sweep::Advance(float32 alpha)
{
 (void)( (!!(alpha0 < 1.0f)) || (_wassert(L"alpha0 < 1.0f", L"../..\\Box2D/Common/b2Math.h", (unsigned)(704)), 0) );
 float32 beta = (alpha - alpha0) / (1.0f - alpha0);
 c0 += beta * (c - c0);
 a0 += beta * (a - a0);
 alpha0 = alpha;
}


inline void b2Sweep::Normalize()
{
 float32 twoPi = 2.0f * 3.14159265359f;
 float32 d = twoPi * floorf(a0 / twoPi);
 a0 -= d;
 a -= d;
}
# 23 "../..\\Box2D/Common/b2Draw.h" 2


struct b2Color
{
 b2Color() {}
 b2Color(float32 r, float32 g, float32 b) : r(r), g(g), b(b) {}
 void Set(float32 ri, float32 gi, float32 bi) { r = ri; g = gi; b = bi; }
 float32 r, g, b;
};



class b2Draw
{
public:
 b2Draw();

 virtual ~b2Draw() {}

 enum
 {
  e_shapeBit = 0x0001,
  e_jointBit = 0x0002,
  e_aabbBit = 0x0004,
  e_pairBit = 0x0008,
  e_centerOfMassBit = 0x0010
 };


 void SetFlags(uint32 flags);


 uint32 GetFlags() const;


 void AppendFlags(uint32 flags);


 void ClearFlags(uint32 flags);


 virtual void DrawPolygon(const b2Vec2* vertices, int32 vertexCount, const b2Color& color) = 0;


 virtual void DrawSolidPolygon(const b2Vec2* vertices, int32 vertexCount, const b2Color& color) = 0;


 virtual void DrawCircle(const b2Vec2& center, float32 radius, const b2Color& color) = 0;


 virtual void DrawSolidCircle(const b2Vec2& center, float32 radius, const b2Vec2& axis, const b2Color& color) = 0;


 virtual void DrawSegment(const b2Vec2& p1, const b2Vec2& p2, const b2Color& color) = 0;



 virtual void DrawTransform(const b2Transform& xf) = 0;

protected:
 uint32 m_drawFlags;
};
# 20 "f:\\projects\\cocos\\inventory\\cocos2d\\external\\box2d\\common\\b2draw.cpp" 2

b2Draw::b2Draw()
{
 m_drawFlags = 0;
}

void b2Draw::SetFlags(uint32 flags)
{
 m_drawFlags = flags;
}

uint32 b2Draw::GetFlags() const
{
 return m_drawFlags;
}

void b2Draw::AppendFlags(uint32 flags)
{
 m_drawFlags |= flags;
}

void b2Draw::ClearFlags(uint32 flags)
{
 m_drawFlags &= ~flags;
}
