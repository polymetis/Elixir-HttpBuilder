if Code.ensure_loaded?(Jason) do
  defmodule HttpBuilder.Adapters.JSONParser.Jason do
      
      @behaviour HttpBuilder.Adapter.JSONParser
      
      alias HttpBuilder.Adapter.JSONParser

      @doc """
      Encodes a value to JSON.
      """
      @spec encode!(value :: term, options :: Keyword.t) :: JSONParser.encoded
      def encode!(value, opts \\ []), do: Jason.encode!(value, opts)

      @doc """
      Decodes JSON to a value
      """
      @spec decode!(value :: term, options :: Keyword.t) :: JSONParser.decoded
      def decode!(value, opts \\ []), do: Jason.decode!(value, opts)
      
  end
end
