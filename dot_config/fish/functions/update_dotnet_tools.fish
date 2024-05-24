function update_dotnet_tools --description 'Update globally-installed dotnet tools (the dotnet CLI actually reinstalls everything, whether or not the tool is outdated)'
    # TODO: replace with `dotnet tool update --all` from <https://github.com/dotnet/sdk/issues/10130>
    and ls $HOME/.dotnet/tools | xargs dotnet tool update --global
end
