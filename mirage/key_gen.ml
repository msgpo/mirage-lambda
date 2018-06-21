(* Generated by mirage configure --net=socket (Wed, 20 Jun 2018 17:28:40 GMT). *)

let dhcp () = false

let interfaces =Functoria_runtime.Key.create
  (Functoria_runtime.Arg.opt (Cmdliner.Arg.list Mirage_runtime.Arg.ipv4_address) 
   [(Ipaddr.V4.t_of_sexp (Sexplib.Sexp.of_string "0.0.0.0"))] (Cmdliner.Arg.info
   ~docs:"UNIKERNEL PARAMETERS" ?docv:(Some "INTERFACES")
   ?doc:(Some "The interfaces bound by the socket in the unikernel.  ")
   ?env:(None) ["interfaces"]))
let interfaces_t = Functoria_runtime.Key.term interfaces
let interfaces () = Functoria_runtime.Key.get interfaces

let logs =Functoria_runtime.Key.create
  (Functoria_runtime.Arg.opt (Cmdliner.Arg.list Mirage_runtime.Arg.log_threshold) [] (Cmdliner.Arg.info
   ~docs:"UNIKERNEL PARAMETERS" ?docv:(Some "LEVEL")
   ?doc:(Some
           "Be more or less verbose. $(docv) must be of the form\n$(b,*:info,foo:debug) means that that the log threshold is set to\n$(b,info) for every log sources but the $(b,foo) which is set to\n$(b,debug).  ")
   ?env:(Some (Cmdliner.Arg.env_var "MIRAGE_LOGS")) ["l"; "logs"]))
let logs_t = Functoria_runtime.Key.term logs
let logs () = Functoria_runtime.Key.get logs

let net () = `Socket

let port =Functoria_runtime.Key.create
  (Functoria_runtime.Arg.opt Cmdliner.Arg.int 1234 (Cmdliner.Arg.info
   ~docs:"APPLICATION OPTIONS" ?docv:(None)
   ?doc:(Some "The TCP port on which to listen for incoming connections.  ")
   ?env:(None) ["p"; "port"]))
let port_t = Functoria_runtime.Key.term port
let port () = Functoria_runtime.Key.get port

let prng () = `Stdlib

let socket =Functoria_runtime.Key.create
  (Functoria_runtime.Arg.opt (Cmdliner.Arg.some Mirage_runtime.Arg.ipv4_address) 
   (None) (Cmdliner.Arg.info ~docs:"UNIKERNEL PARAMETERS"
   ?docv:(Some "SOCKET")
   ?doc:(Some "The address bounds by the socket in the unikernel.  ")
   ?env:(None) ["socket"]))
let socket_t = Functoria_runtime.Key.term socket
let socket () = Functoria_runtime.Key.get socket

let target () = `MacOSX

let target_debug () = false

let warn_error () = false

let runtime_keys = List.combine [interfaces_t; logs_t; port_t; socket_t] 
["interfaces"; "logs"; "port"; "socket"]
