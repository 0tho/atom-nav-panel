# Created by ctags2coffee.coffee by processing .ctags
langdef =
  All: [
    {re: /#nav-mark:(.*)/i, id: '%1', kind: 'Markers'}
    {re: /(?:#|\/\/)\s*@?todo:\s*(.+)/i, id: '%1', kind: 'TODO'}
    {re: /(?:#|\/\/)\s*@?fixme:\s*(.+)/i, id: '%1', kind: 'FIXME'}
    {re: /(?:#|\/\/)\s*@?bug:\s*(.+)/i, id: '%1', kind: 'BUG'}
    {re: /(?:#|\/\/)\s*@?note:\s*(.+)/i, id: '%1', kind: 'NOTE'}
  ]
  CoffeeScript: [
    {re: /^[ \t]*class[ \t]*([a-zA-Z$_\.0-9]+)(?:[ \t]|$)/, id: '%1', kind: 'Class'}
    {re: /^[ \t]*(@?[a-zA-Z$_\.0-9]+)[ \t]*(?:=|\:)[ \t]*(\(.*\))?[ \t]*(?:-|=)>/, id: '%1', kind: 'Function'}
    {re: /^[ \t]*([a-zA-Z$_0-9]+\:\:[a-zA-Z$_\.0-9]+)[ \t]*(=|\:)[ \t]*(\(.*\))?[ \t]*(-|=)>/, id: '%1', kind: 'Function'}
    {re: /^[ \t]*(@?[a-zA-Z$_\.0-9]+)[ \t]*[:=][^>]*$/, id: '%1', kind: 'Variable'}
  ]
  Ruby: [
    {re: /^[\t ]*([A-Z][-_A-Za-z0-9]*::)*([A-Z][-_A-Za-z0-9]*)[\t ]*=/, id: '%2', kind: 'Constant'}
    {re: /^[ \t]*([A-Z_][A-Z0-9_]*)[ \t]*=/, id: '%1', kind: 'Constant'}
    {re: /^[ \t]*describe (.*) do/, id: '%1', kind: 'Rspec describe'}
    {re: /^[ \t]*context ['"](.*)['"] do/, id: '%1', kind: 'Rspec context'}
  ]
  Makefile: [
    {re: /^([\w-_]+):/, id: '%1', kind: 'Target'}
  ]
  php: [
    {re: /^\s*const[ \t]*([a-zA-Z]+[^=]*=.*);/i, id: '%1', kind: 'Class'}
    {re: /^\s*(protected|private|public)\s*\$(.+?)[\s;]/i, id: '%1 %2', kind: 'Properties'}
    {re: /^\s*(protected|private|public)\s+static\s*\$(.+?)[\s;]/i, id: '%1 %2', kind: 'Static Properties'}
    {re: /^\s*function (.*)/i, id: '%2', kind: 'Functions'}
    {re: /^\s*protected\s+function\s*(.*)[\s{]/i, id: '%1', kind: 'Protected Methods'}
    {re: /^\s*private\s+function\s*(.*)[\s{]/i, id: '%1', kind: 'Private Methods'}
    {re: /^\s*public\s+function\s*(.*)[\s{]/i, id: '%1', kind: 'Public Methods'}
  ]
  Css: [
    {re: /^[ \t]*(.+)[ \t]*\{/, id: '%1', kind: 'Selector'}
    {re: /^[ \t]*(.+)[ \t]*,[ \t]*$/, id: '%1', kind: 'Selector'}
    {re: /^[ \t]*[@$]([a-zA-Z$_][-a-zA-Z$_0-9]*)[ \t]*:/, id: '%1', kind: 'Selector'}
  ]
  Sass: [
    {re: /^[ \t]*([#.]*[a-zA-Z_0-9]+)[ \t]*$/, id: '%1', kind: 'Function'}
  ]
  Yaml: [
    {re: /^[ \t]*([a-zA-Z_0-9 ]+)[ \t]*\:[ \t]*/, id: '%1', kind: 'Function'}
  ]
  Html: [
    {re: /^[ \t]*<([a-zA-Z]+)[ \t]*.*>/, id: '%1', kind: 'Function'}
  ]
  Markdown: [
    {re: /^#+[ \t]*([^#]+)/, id: '%1', kind: 'Header'}
    {re: /^- \[ \] (.*)/, id: '%1', kind: 'Open Tasks'}    
  ]
  Json: [
    {re: /^[ \t]*"([^"]+)"[ \t]*\:/, id: '%1', kind: 'Field'}
  ]
  Cson: [
    {re: /^[ \t]*'([^']+)'[ \t]*\:/, id: '%1', kind: 'Field'}
    {re: /^[ \t]*"([^"]+)"[ \t]*\:/, id: '%1', kind: 'Field'}
    {re: /^[ \t]*([^'"#]+)[ \t]*\:/, id: '%1', kind: 'Field'}
  ]
  Go: [
    {re: /func([ \t]+\([^)]+\))?[ \t]+([a-zA-Z0-9_]+)/, id: '%2', kind: 'Func'}
    {re: /var[ \t]+([a-zA-Z_][a-zA-Z0-9_]*)/, id: '%1', kind: 'Var'}
    {re: /type[ \t]+([a-zA-Z_][a-zA-Z0-9_]*)/, id: '%1', kind: 'Type'}
  ]
  Capnp: [
    {re: /struct[ \t]+([A-Za-z]+)/, id: '%1', kind: 'Struct'}
    {re: /enum[ \t]+([A-Za-z]+)/, id: '%1', kind: 'Enum'}
    {re: /using[ \t]+([A-Za-z]+)[ \t]+=[ \t]+import/, id: '%1', kind: 'Using'}
    {re: /const[ \t]+([A-Za-z]+)/, id: '%1', kind: 'Const'}
  ]
  perl: [
    {re: /with[ \t]+([^;]+)[ \t]*?;/, id: '%1', kind: 'Role'}
    {re: /extends[ \t]+['"]([^'"]+)['"][ \t]*?;/, id: '%1', kind: 'Extends'}
    {re: /use[ \t]+base[ \t]+['"]([^'"]+)['"][ \t]*?;/, id: '%1', kind: 'Extends'}
    {re: /use[ \t]+parent[ \t]+['"]([^'"]+)['"][ \t]*?;/, id: '%1', kind: 'Extends'}
    {re: /Mojo::Base[ \t]+['"]([^'"]+)['"][ \t]*?;/, id: '%1', kind: 'Extends'}
    {re: /^[ \t]*?use[ \t]+([^;]+)[ \t]*?;/, id: '%1', kind: 'Use'}
    {re: /^[ \t]*?require[ \t]+((\w|\:)+)/, id: '%1', kind: 'Require'}
    {re: /^[ \t]*?has[ \t]+['"]?(\w+)['"]?/, id: '%1', kind: 'Attribute'}
    {re: /^[ \t]*?\*(\w+)[ \t]*?=/, id: '%1', kind: 'Alias'}
    {re: /->helper\([ \t]?['"]?(\w+)['"]?/, id: '%1', kind: 'Helper'}
    {re: /^[ \t]*?our[ \t]*?[\$@%](\w+)/, id: '%1', kind: 'Our'}
    {re: /^\=head1[ \t]+(.+)/, id: '%1', kind: 'Plain Old Doc'}
    {re: /^\=head2[ \t]+(.+)/, id: '-- %1', kind: 'Plain Old Doc'}
    {re: /^\=head[3-5][ \t]+(.+)/, id: '---- %1', kind: 'Plain Old Doc'}
  ]
  Perl6: [
    {re: /sub\s+(?!infix|postfix|postcircumfix|prefix)([\w-']+).*{/, id: '%1', kind: 'Routine'},
    {re: /sub\s+(?!infix|postfix|postcircumfix|prefix)([\w-']+)\s*\(/, id: '%1', kind: 'Routine'},
    {re: /sub\s+(infix|postfix|postcircumfix|prefix):<([\S]+)>.*{/, id: '%1 %2', kind: 'Operator'},
    {re: /sub\s+(infix|postfix|postcircumfix|prefix):«([\S]+)».*{/, id: '%1 %2', kind: 'Operator'},
    {re: /class\s+([\w-']+)/, id: '%1', kind: 'Class'},
    {re: /method\s+([\w-']+)/, id: '%1', kind: 'Method'},
    {re: /token\s+([\w-']+)\s+{/, id: '%1 (token)', kind: 'Grammar'},
    {re: /rule\s+([\w-']+)\s+{/, id: '%1 (rule)', kind: 'Grammar'},
    {re: /regex\s+([\w-']+)\s+{/, id: '%1', kind: 'Regex'}
  ],
  PerlTest: [
    {re: /n?ok[\s\S]*,\s*(["'])(.+)\1;$/m, id: '%2', kind: 'Test case'},
    {re: /(cmp|use|isa|does|can|dies|lives)-ok[\s\S]*,\s*(["'])(.+)\1;$/m, id: '%2', kind: 'Test case'},
    {re: /is(?:-?(?:nt|deeply|approx))?[\s\S]*,\s*(["'])(.+)\1;$/m, id: '%2', kind: 'Test case'},
    {re: /(?:un|throws-)?like[\s\S]*?, [\s\S]*?(["'])(.+?)\1;$/m, id: '%2', kind: 'Test case'},
    {re: /eval-(dies|lives)-ok[\s\S]*,\s*(["'])(.+)\1;$/m, id: '%2', kind: 'Test case'},
    {re: /subtest\s*(["'])(.+)\1\s*=>/, id: '%2', kind: 'Subtest'}
  ],
  JavaScript: [
    {re: /(,|(;|^)[ \t]*(var|let|([A-Za-z_$][A-Za-z0-9_$.]*\.)*))[ \t]*([A-Za-z0-9_$]+)[ \t]*=[ \t]*function[ \t]*\(/, id: '%5', kind: 'Function'}
    {re: /function[ \t]+([A-Za-z0-9_$]+)[ \t]*\([^)]*\)/, id: '%1', kind: 'Function'}
    {re: /(,|^|\*\/)[ \t]*([A-Za-z_$][A-Za-z0-9_$]+)[ \t]*:[ \t]*function[ \t]*\(/, id: '%2', kind: 'Function'}
    {re: /(,|^|\*\/)[ \t]*get[ \t]+([A-Za-z_$][A-Za-z0-9_$]+)[ \t]*\([ \t]*\)[ \t]*\{/, id: 'get %2', kind: 'Function'}
    {re: /(,|^|\*\/)[ \t]*set[ \t]+([A-Za-z_$][A-Za-z0-9_$]+)[ \t]*\([ \t]*([A-Za-z_$][A-Za-z0-9_$]+)?[ \t]*\)[ \t]*\{/, id: 'set %2', kind: 'Function'}
  ]
  haxe: [
    {re: /^package[ \t]+([A-Za-z0-9_.]+)/, id: '%1', kind: 'Package'}
    {re: /^[ \t]*[(@:macro|private|public|static|override|inline|dynamic)( \t)]*function[ \t]+([A-Za-z0-9_]+)/, id: '%1', kind: 'Function'}
    {re: /^[ \t]*([private|public|static|protected|inline][ \t]*)+var[ \t]+([A-Za-z0-9_]+)/, id: '%2', kind: 'Variable'}
    {re: /^[ \t]*package[ \t]*([A-Za-z0-9_]+)/, id: '%1', kind: 'Package'}
    {re: /^[ \t]*(extern[ \t]*|@:native\([^)]*\)[ \t]*)*class[ \t]+([A-Za-z0-9_]+)[ \t]*[^\{]*/, id: '%2', kind: 'Class'}
    {re: /^[ \t]*(extern[ \t]+)?interface[ \t]+([A-Za-z0-9_]+)/, id: '%2', kind: 'Interface'}
    {re: /^[ \t]*typedef[ \t]+([A-Za-z0-9_]+)/, id: '%1', kind: 'Typedef'}
    {re: /^[ \t]*enum[ \t]+([A-Za-z0-9_]+)/, id: '%1', kind: 'Typedef'}
  ]
  Elixir: [
    {re: /^[ \t]*def(p?)[ \t]+([a-z_][a-zA-Z0-9_?!]*)/, id: '%2', kind: 'Functions (def ...)'}
    {re: /^[ \t]*defcallback[ \t]+([a-z_][a-zA-Z0-9_?!]*)/, id: '%1', kind: 'Callbacks (defcallback ...)'}
    {re: /^[ \t]*defdelegate[ \t]+([a-z_][a-zA-Z0-9_?!]*)/, id: '%1', kind: 'Delegates (defdelegate ...)'}
    {re: /^[ \t]*defexception[ \t]+([A-Z][a-zA-Z0-9_]*\.)*([A-Z][a-zA-Z0-9_?!]*)/, id: '%2', kind: 'Exceptions (defexception ...)'}
    {re: /^[ \t]*defimpl[ \t]+([A-Z][a-zA-Z0-9_]*\.)*([A-Z][a-zA-Z0-9_?!]*)/, id: '%2', kind: 'Implementations (defimpl ...)'}
    {re: /^[ \t]*defmacro(p?)[ \t]+([a-z_][a-zA-Z0-9_?!]*)\(/, id: '%2', kind: 'Macros (defmacro ...)'}
    {re: /^[ \t]*defmacro(p?)[ \t]+([a-zA-Z0-9_?!]+)?[ \t]+([^ \tA-Za-z0-9_]+)[ \t]*[a-zA-Z0-9_!?!]/, id: '%3', kind: 'Operators (e.g. "defmacro a <<< b")'}
    {re: /^[ \t]*defmodule[ \t]+([A-Z][a-zA-Z0-9_]*\.)*([A-Z][a-zA-Z0-9_?!]*)/, id: '%2', kind: 'Modules (defmodule ...)'}
    {re: /^[ \t]*defprotocol[ \t]+([A-Z][a-zA-Z0-9_]*\.)*([A-Z][a-zA-Z0-9_?!]*)/, id: '%2', kind: 'Protocols (defprotocol...)'}
    {re: /^[ \t]*Record\.defrecord[ \t]+:([a-zA-Z0-9_]+)/, id: '%1', kind: 'Records (defrecord...)'}
  ]
  Nim: [
    {re: /^[\t\s]*proc\s+([_A-Za-z0-9]+)\**(\[\w+(\:\s+\w+)?\])?\s*\(/, id: '%1', kind: 'Function'}
    {re: /^[\t\s]*iterator\s+([_A-Za-z0-9]+)\**(\[\w+(\:\s+\w+)?\])?\s*\(/, id: '%1', kind: 'Iterator'}
    {re: /^[\t\s]*macro\s+([_A-Za-z0-9]+)\**(\[\w+(\:\s+\w+)?\])?\s*\(/, id: '%1', kind: 'Macro'}
    {re: /^[\t\s]*method\s+([_A-Za-z0-9]+)\**(\[\w+(\:\s+\w+)?\])?\s*\(/, id: '%1', kind: 'Method'}
    {re: /^[\t\s]*template\s+([_A-Za-z0-9]+)\**(\[\w+(\:\s+\w+)?\])?\s*\(/, id: '%1', kind: 'Generics'}
    {re: /^[\t\s]*converter\s+([_A-Za-z0-9]+)\**(\[\w+(\:\s+\w+)?\])?\s*\(/, id: '%1', kind: 'Converter'}
  ]
  Fountain: [
    {re: /^(([iI][nN][tT]|[eE][xX][tT]|[^\w][eE][sS][tT]|\.|[iI]\.?\/[eE]\.?)([^\n]+))/, id: '%1', kind: 'Function'}
  ]
  Julia: [
    {re: /^[ \t]*(function|macro|abstract|type|typealias|immutable)[ \t]+([^ \t({[]+).*$/, id: '%2', kind: 'Function'}
    {re: /^[ \t]*(([^@#$ \t({[]+)|\(([^@#$ \t({[]+)\)|\((\$)\))[ \t]*(\{.*\})?[ \t]*\([^#]*\)[ \t]*=([^=].*$|$)/, id: '%2%3%4', kind: 'Function'}
  ]
  taskpaper: [
    {re: /(.*):$/, id: '%1', kind: 'Tasks'}
    {re: /(.*)@important$/, id: '%1', kind: 'Important'}
    {re: /(.*)@due\((.*)\)$/, id: '%1', kind: 'With due date'}
  ]
langmap =
  '.coffee': langdef.CoffeeScript
  '.litcoffee': langdef.CoffeeScript
  '.rb': langdef.Ruby
  'Rakefile': langdef.Ruby
  'Makefile': langdef.Makefile
  '.php': langdef.php
  '.pl6': langdef.Perl6
  '.pm6': langdef.Perl6
  '.t': langdef.PerlTest
  '.css': langdef.Css
  '.less': langdef.Css
  '.scss': langdef.Css
  '.sass': langdef.Sass
  '.yaml': langdef.Yaml
  '.yml': langdef.Yaml
  '.md': langdef.Markdown
  '.markdown': langdef.Markdown
  '.mdown': langdef.Markdown
  '.mkd': langdef.Markdown
  '.mkdown': langdef.Markdown
  '.ron': langdef.Markdown
  '.json': langdef.Json
  '.cson': langdef.Cson
  '.gyp': langdef.Cson
  '.go': langdef.Go
  '.capnp': langdef.Capnp
  '.pod': langdef.perl
  '.js': langdef.JavaScript
  '.hx': langdef.haxe
  '.ex.exs': langdef.Elixir
  '.nim': langdef.Nim
  '.fountain': langdef.Fountain
  '.ftn': langdef.Fountain
  '.jl': langdef.Julia
  '.taskpaper': langdef.taskpaper  
module.exports = {langdef: langdef, langmap: langmap}
