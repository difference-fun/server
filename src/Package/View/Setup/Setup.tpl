{{R3M}}
{{$register = Package.Difference.Fun.Server:Init:register()}}
{{if(!is.empty($register))}}
{{Package.Difference.Fun.Server:Import:role.system()}}
{{$options = options()}}
{{if(is.empty($options.public))}}
{{$options.public = config('server.public')}}
{{/if}}
{{Package.Difference.Fun.Server:Main:public.create($options)}}
{{/if}}