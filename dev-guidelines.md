# Open Tech Strategies Coding Standards and Guidelines

Published under a [Creative Commons Attribution-ShareAlike 4.0](https://creativecommons.org/licenses/by-sa/4.0/) license.

Introduction
------------

At OTS, we write code in many different programming languages.  For
now, these guidelines cover mainly Python because Python is the
language where we first needed some standards.  When you write in
other languages, please try to use these guidelines to insofar as they
can be applied to that language, and update this document as
necessary.  If you want to discuss any of the guidelines, find us in
`#OpenTechStrategies` on the Freenode.net IRC network, or just open an
[issue](https://github.com/OpenTechStrategies/docs/issues/new).

All code should be developed from the start in a public repository
under an open source license, except when there is a specific reason
not to (e.g., a client agreement that stipulates the code only be
released upon completion).  Please have a partner at the firm sign off
on the outbound license; our default is usually the [GNU Affero
General Public License](https://www.gnu.org/licenses/agpl-3.0.en.html),
but other open source licenses may be used depending on circumstances.

Python Guidelines.
==================

* **Python 3 is preferred.** 

  In general, we try to write new code in Python 3, and convert legacy
  code from 2 to 3 (usually using
  [2to3](https://docs.python.org/3/library/2to3.html)) when we can.

  _This guideline is sometimes relaxed._ If you're more familiar with
  Python 2 and you just need to get something done quickly, it's okay
  to do it in Python 2 (though be prepared to go to 3 if/when others
  join in maintaining it).  There may also still be cases where a
  certain library that you need is not yet available in Python 3.

  Think of Python 3 as the eventual destination of all OTS Python
  code.  Most of the time, the easiest way to get there is to start
  out there, but there may sometimes be situations where a different
  path works better for you.  Use your judgement.

* **Use 4 spaces (not tabs) per indentation level.**  

  As per [PEP-8](https://www.python.org/dev/peps/pep-0008/), we use 4
  spaces per indendation level, and use spaces not tabs.

* **Stay within 76 columns where possible.** 

  Try to keep each line within 76 columns, but it's okay to go wider
  if the alternative is an awkward code wrap or a string being broken
  across lines in a way that makes you feel yucky.

* **Document every class, method, and function.**

  Every class should have a documentation string explaining what it is
  for -- what it encapsulates.  Please don't assume that the
  conception behind a class is obvious from the class's name; what's
  obvious to the author is often less obvious to later readers.

  Every method or function should have a documentation string that
  says the types and meanings of each input parameter, any important
  side effects performed, and what the return value is (or if there is
  no return value, say that explicitly).

  Parameters should appear in the doc string in UPPER_CASE, even
  though they are not upper case in the code (this convention is
  inherited from [Emacs
  Lisp](https://www.gnu.org/software/emacs/manual/html_node/elisp/Documentation-Tips.html#Documentation-Tips),
  in case you're wondering).  Note that this means one should avoid
  having parameters whose names differ only by case.  Actually, that's
  a good principle to follow for identifiers of any kind, throughout
  the code.

  There is no need to document every possible exception that might be
  thrown, but it is often good to document at least the custom
  exceptions that could be raised.  Because it can be burdensome to
  list them all, since callees can raise exceptions too, just use your
  judgement here.

* **Document non-obvious data structures.**

  Document any variables whose structure and meaning is not obvious.
  For example, if it's not completely obvious what a dictionary holds,
  then document what kinds of keys it holds, and exactly what values
  they map to.

* **Put a `__doc__` string at the top of each source file.** 

  At the top of each standalone script or module, put a `__doc__`
  string showing the usage.  This string is what should be displayed
  when the `--usage` or `--help` option is passed, but it's convenient
  to also have it right at the top of the file, so that people reading
  the source see it first.

* **Use underscores\_in\_identifiers, but CamelCase for class names.**

  Use underscores to separate the words in a variable name, method
  name, function name, or any other identifier, _except_ for class
  names, which should use CamelCase (with the initial letter
  capitalized too, e.g., "CamelCase" not "camelCase").
