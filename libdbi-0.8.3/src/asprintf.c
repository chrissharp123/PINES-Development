/*
 * ripped from gcc
 * $Id: asprintf.c,v 1.4 2005/07/28 19:40:48 mhoenicka Exp $
 */

#ifdef HAVE_CONFIG_H
#include <config.h>
#endif

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdarg.h>

#ifndef HAVE_VASPRINTF

int int_vasprintf(char **result, const char *format, va_list *args)
{
        const char *p = format;
  /* Add one to make sure that it is never zero, which might cause malloc
     to return NULL.  */
        int total_width = strlen(format) + 1;
        va_list ap;

        memcpy((char*) &ap, (char*) args, sizeof(va_list));

        while (*p != '\0') {
                if (*p++ == '%') {
                        while (strchr ("-+ #0", *p)) {
                ++p;
            }

                        if (*p == '*') {
                                ++p;
                                total_width += abs(va_arg(ap, int));
                        }
                        else {
                                total_width += (unsigned long) strtol(p, (char**) &p, 10);
                        }
                        
                        if (*p == '.') {
                                ++p;

                                if (*p == '*') {
                                        ++p;
                                        total_width += abs(va_arg(ap, int));
                                }
                                else {
                        total_width += (unsigned long) strtol(p, (char**) &p, 10);
                }
                        }
         
                        while (strchr ("hlL", *p)) {
                                ++p;
                        }
                        
                        /* Should be big enough for any format specifier except %s and floats.  */
                        total_width += 30;

                        switch (*p) {
                          case 'd':
                          case 'i':
                          case 'o':
                          case 'u':
                          case 'x':
                          case 'X':
                          case 'c':
                                (void) va_arg(ap, int);
                                break;
                          case 'f':
                          case 'e':
                          case 'E':
                          case 'g':
                          case 'G':
                                (void) va_arg(ap, double);
              /* Since an ieee double can have an exponent of 307, we'll
                 make the buffer wide enough to cover the gross case. */
                                total_width += 307;
                                break;
                          case 's':
                                total_width += strlen(va_arg(ap, char*));
                                break;
                          case 'p':
                          case 'n':
                                (void) va_arg(ap, char*);
                                break;
                        }
                }
        }

        *result = malloc(total_width);

        if (*result != NULL) {
                return vsprintf(*result, format, *args);
        }
        else {
                return 0;
        }
}

int vasprintf(char **result, const char *format, va_list args)
{
        return int_vasprintf(result, format, &args);
}

#endif /* !HAVE_VASPRINTF */

#ifndef HAVE_ASPRINTF

int asprintf(char **result, const char *format, ...)
{
        va_list va;
        int ret;
        
        va_start(va, format);
        ret = vasprintf(result, format, va);
        va_end(va);
        
        return ret;
}

#endif /* !HAVE_ASPRINTF */

