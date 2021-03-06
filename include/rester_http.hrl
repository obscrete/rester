-ifndef(_RESTER_HTTP_HRL_).
-define(_RESTER_HTTP_HRL_, true).

-include("rester_url.hrl").

-ifndef(CRNL).
-define(CRNL, "\r\n").
-endif.

-ifndef(NL).
-define(NL,   "\n").
-endif.

-ifndef(CR).
-define(CR,   "\r").
-endif.

-record(http_request,
	{
	  method,    %% 'GET' 'POST' ...
	  uri,       %% #url | string path
	  version,   %% version {Major,Minor}
	  headers    %% #http_chdr
	 }).

-record(http_response,
	{
	  version,   %% version {Major,Minor}
	  status,    %% status
	  phrase,    %% status text
	  headers    %% #http_shdr
	 }).

%% client headers
-record(http_chdr, 
	{
	  host,
	  connection,
	  transfer_encoding,
	  accept,
	  if_modified_since,
	  if_match,
	  if_none_match,
	  if_range,
	  if_unmodified_since,
	  range,
	  referer,
	  user_agent,
	  accept_ranges,
	  cookie = [],
	  keep_alive,
	  content_length,
	  content_type,
	  authorization,
	  other = []   %% misc other headers
	 }).

%% server headers
-record(http_shdr, 
	{
	  connection,
	  transfer_encoding,
	  location,
	  set_cookie,
	  content_length,
	  content_type,
	  other = []   %% misc other headers
	 }).


-endif.

